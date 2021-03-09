const std = @import("std");
const c = @import("vulkan.zig");

const assert = std.debug.assert;
const print = std.debug.print;
const Allocator = std.mem.Allocator;
usingnamespace @import("vulkan_utils.zig");

fn VK_VERSION_MAJOR(version: u32) u32 {
    return version >> 22;
}
fn VK_VERSION_MINOR(version: u32) u32 {
    return (version >> 12) & 0x3ff;
}
fn VK_VERSION_PATCH(version: u32) u32 {
    return version & 0xfff;
}

const MAX_NR_OF_2D_TEXTURES = 1024;

const enableValidationLayers = std.debug.runtime_safety;
const validationLayers = [_][*:0]const u8{"VK_LAYER_KHRONOS_validation"};
const deviceExtensions = [_][*:0]const u8{
    c.VK_KHR_SWAPCHAIN_EXTENSION_NAME,
    c.VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME,
    c.VK_KHR_MAINTENANCE3_EXTENSION_NAME,
    c.VK_KHR_MAINTENANCE1_EXTENSION_NAME,
    c.VK_KHR_SWAPCHAIN_EXTENSION_NAME,
    c.VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME,
};

const NR_COMMAND_BUFFERS: u32 = 2;
const MAX_SWAP_CHAIN_IMAGES: u32 = 8;

const VkContext = struct {
    currentCommandBuffer: usize = 0,
    instance: c.VkInstance = undefined,
    surface: c.VkSurfaceKHR = undefined,
    device: c.VkDevice = undefined,
    physicalDevice: c.VkPhysicalDevice = undefined,
    queue: c.VkQueue = undefined,
    commandPool: c.VkCommandPool = undefined,
    commandBuffers: [NR_COMMAND_BUFFERS]c.VkCommandBuffer = undefined,
    descriptorPool: c.VkDescriptorPool = undefined,
    queueFamilyIndex: u32 = undefined,

    imageAvailableSemaphores: [NR_COMMAND_BUFFERS]c.VkSemaphore = undefined,
    renderFinishedSemaphores: [NR_COMMAND_BUFFERS]c.VkSemaphore = undefined,
    commandBufferFences: [NR_COMMAND_BUFFERS]c.VkFence = undefined,

    swapChain: SwapChain = SwapChain{},
    physicalDeviceProperties: c.VkPhysicalDeviceProperties = undefined,
    physicalDeviceFeatures: c.VkPhysicalDeviceFeatures = undefined,
    physicalDeviceMemoryProperties: c.VkPhysicalDeviceMemoryProperties = undefined,
    descriptorSetLayouts: DescriptorSetLayouts = DescriptorSetLayouts {},

    const DescriptorSetLayouts = struct {
        dynamic: c.VkDescriptorSetLayout = undefined,
        textures2D: c.VkDescriptorSetLayout = undefined,
        storageBuffer: c.VkDescriptorSetLayout = undefined,
        storageImage: c.VkDescriptorSetLayout = undefined,
    };

    const SwapChain = struct {
        images: [MAX_SWAP_CHAIN_IMAGES]c.VkImage = undefined,
        imageViews: [MAX_SWAP_CHAIN_IMAGES]c.VkImageView = undefined,
        frameBuffers: [MAX_SWAP_CHAIN_IMAGES]c.VkFramebuffer = undefined,
        swapChain: c.VkSwapchainKHR = undefined,
        imageFormat: c.VkFormat = undefined,
        extent: c.VkExtent2D = undefined,
        nrOfImages: u32 = undefined,
    };
};

pub var vkContext: VkContext = VkContext{};
var callback: c.VkDebugReportCallbackEXT = undefined;

fn debugCallback(
    flags: c.VkDebugReportFlagsEXT,
    objType: c.VkDebugReportObjectTypeEXT,
    obj: u64,
    location: usize,
    code: i32,
    layerPrefix: [*c]const u8,
    msg: [*c]const u8,
    userData: ?*c_void,
) callconv(.C) c.VkBool32 {
    std.debug.warn("validation layer: {s}\n", .{msg});
    return c.VK_FALSE;
}

/// caller must free returned memory
fn getRequiredExtensions(allocator: *Allocator) ![][*]const u8 {
    var glfwExtensionCount: u32 = 0;
    var glfwExtensions =  @ptrCast([*][*]const u8, c.glfwGetRequiredInstanceExtensions(&glfwExtensionCount));

    var extensions = std.ArrayList([*]const u8).init(allocator);
    errdefer extensions.deinit();

    try extensions.appendSlice(glfwExtensions[0..glfwExtensionCount]);

    if (enableValidationLayers)
        try extensions.append(c.VK_EXT_DEBUG_REPORT_EXTENSION_NAME);

    return extensions.toOwnedSlice();
}

fn createInstance(allocator: *Allocator) !void {
    const appInfo = c.VkApplicationInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_APPLICATION_INFO,
        .pApplicationName = "Mongoose",
        .applicationVersion = c.VK_MAKE_VERSION(1, 0, 0),
        .pEngineName = "Mongoose",
        .engineVersion = c.VK_MAKE_VERSION(1, 0, 0),
        .apiVersion = c.VK_API_VERSION_1_0,
        .pNext = null,
    };

    const extensions = try getRequiredExtensions(allocator);
    defer allocator.free(extensions);

    const createInfo = c.VkInstanceCreateInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
        .pApplicationInfo = &appInfo,
        .enabledExtensionCount = @intCast(u32, extensions.len),
        .ppEnabledExtensionNames = extensions.ptr,
        .enabledLayerCount = if (enableValidationLayers) @intCast(u32, validationLayers.len) else 0,
        .ppEnabledLayerNames = if (enableValidationLayers) &validationLayers else null,
        .pNext = null,
        .flags = 0,
    };
    try checkResult(c.vkCreateInstance(&createInfo, null, &vkContext.instance));
}

fn CreateDebugReportCallbackEXT(
    pCreateInfo: *const c.VkDebugReportCallbackCreateInfoEXT,
    pAllocator: ?*const c.VkAllocationCallbacks,
    pCallback: *c.VkDebugReportCallbackEXT,
) c.VkResult {
    const func = @ptrCast(c.PFN_vkCreateDebugReportCallbackEXT, c.vkGetInstanceProcAddr(
        vkContext.instance,
        "vkCreateDebugReportCallbackEXT",
    )) orelse return c.VkResult.VK_ERROR_EXTENSION_NOT_PRESENT;
    return func(vkContext.instance, pCreateInfo, pAllocator, pCallback);
}

fn setupDebugCallback() !void {
    var createInfo = c.VkDebugReportCallbackCreateInfoEXT{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT,
        .flags = c.VK_DEBUG_REPORT_ERROR_BIT_EXT | c.VK_DEBUG_REPORT_WARNING_BIT_EXT | c.VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT,
        .pfnCallback = debugCallback,
        .pNext = null,
        .pUserData = null,
    };
    try checkResult(CreateDebugReportCallbackEXT(&createInfo, null, &callback));
}

fn createSurface(window: *c.GLFWwindow) !void {
    try checkResult(c.glfwCreateWindowSurface(vkContext.instance, window, null, &vkContext.surface));
}

fn pickPhysicalDevice(allocator: *Allocator) !void {
    var deviceCount: u32 = 0;
    try checkResult(c.vkEnumeratePhysicalDevices(vkContext.instance, &deviceCount, null));
    assert(deviceCount > 0);

    const devices = try allocator.alloc(c.VkPhysicalDevice, deviceCount);
    defer allocator.free(devices);
    try checkResult(c.vkEnumeratePhysicalDevices(vkContext.instance, &deviceCount, devices.ptr));

    const deviceIndex: u32 = 0;
    vkContext.physicalDevice = devices[deviceIndex];

    c.vkGetPhysicalDeviceProperties(vkContext.physicalDevice, &vkContext.physicalDeviceProperties);
    c.vkGetPhysicalDeviceFeatures(vkContext.physicalDevice, &vkContext.physicalDeviceFeatures);

    var extensionCount: u32 = undefined;
    try checkResult(c.vkEnumerateDeviceExtensionProperties(vkContext.physicalDevice, null, &extensionCount, null));
    const extensions = try allocator.alloc(c.VkExtensionProperties, extensionCount);
    defer allocator.free(extensions);
    try checkResult(c.vkEnumerateDeviceExtensionProperties(vkContext.physicalDevice, null, &extensionCount, extensions.ptr));

    switch (vkContext.physicalDeviceProperties.vendorID) {
        0x8086 => print("Vendor: Intel\n", .{}),
        0x10DE => print("Vendor: NVIDIA\n", .{}),
        0x1002 => print("Vendor: AMD\n", .{}),
        else => print("Vendor: Unknown {}\n", .{vkContext.physicalDeviceProperties.vendorID}),
    }
    print("Device: {s}\n", .{vkContext.physicalDeviceProperties.deviceName[0..10]});

    const version = vkContext.physicalDeviceProperties.apiVersion;
    print("Physical device supports version {}.{}.{}\n", .{ VK_VERSION_MAJOR(version), VK_VERSION_MINOR(version), VK_VERSION_PATCH(version) });

    var foundSwapChainExtension = for (extensions) |extension| {
        if (std.mem.eql(u8, extension.extensionName[0..c.VK_KHR_SWAPCHAIN_EXTENSION_NAME.len], c.VK_KHR_SWAPCHAIN_EXTENSION_NAME))
            break true;
    } else return error.CouldNotFindSwapchainExtension;
}

fn findQueueFamilies(allocator: *Allocator) !void {
    var queueFamilyCount: u32 = 0;
    c.vkGetPhysicalDeviceQueueFamilyProperties(vkContext.physicalDevice, &queueFamilyCount, null);

    const queueFamilies = try allocator.alloc(c.VkQueueFamilyProperties, queueFamilyCount);
    defer allocator.free(queueFamilies);
    c.vkGetPhysicalDeviceQueueFamilyProperties(vkContext.physicalDevice, &queueFamilyCount, queueFamilies.ptr);

    for (queueFamilies) |queueFamily, index| {
        var presentSupport: c.VkBool32 = 0;
        try checkResult(c.vkGetPhysicalDeviceSurfaceSupportKHR(vkContext.physicalDevice, @intCast(u32, index), vkContext.surface, &presentSupport));
        if (presentSupport > 0 and queueFamily.queueFlags & c.VK_QUEUE_GRAPHICS_BIT > 0 and queueFamily.queueFlags & c.VK_QUEUE_COMPUTE_BIT > 0) {
            vkContext.queueFamilyIndex = @intCast(u32, index);
            return;
        }
    }
    return error.CouldNotFindQeueuFamily;
}

fn createLogicalDevice(allocator: *Allocator) !void {
    try findQueueFamilies(allocator);
    // use same queue for graphic, present and compute
    var queuePriority: f32 = 1.0;
    const queueCreateInfo = c.VkDeviceQueueCreateInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
        .queueFamilyIndex = vkContext.queueFamilyIndex,
        .queueCount = 1,
        .pQueuePriorities = &queuePriority,
        .pNext = null,
        .flags = 0,
    };

    const deviceFeaturesEXT = c.VkPhysicalDeviceDescriptorIndexingFeaturesEXT{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT,
        .pNext = null,
        .shaderInputAttachmentArrayDynamicIndexing = c.VK_FALSE,
        .shaderUniformTexelBufferArrayDynamicIndexing = c.VK_FALSE,
        .shaderStorageTexelBufferArrayDynamicIndexing = c.VK_FALSE,
        .shaderUniformBufferArrayNonUniformIndexing = c.VK_FALSE,
        .shaderSampledImageArrayNonUniformIndexing = c.VK_TRUE,
        .shaderStorageBufferArrayNonUniformIndexing = c.VK_FALSE,
        .shaderStorageImageArrayNonUniformIndexing = c.VK_FALSE,
        .shaderInputAttachmentArrayNonUniformIndexing = c.VK_FALSE,
        .shaderUniformTexelBufferArrayNonUniformIndexing = c.VK_FALSE,
        .shaderStorageTexelBufferArrayNonUniformIndexing = c.VK_FALSE,
        .descriptorBindingUniformBufferUpdateAfterBind = c.VK_FALSE,
        .descriptorBindingSampledImageUpdateAfterBind = c.VK_FALSE,
        .descriptorBindingStorageImageUpdateAfterBind = c.VK_FALSE,
        .descriptorBindingStorageBufferUpdateAfterBind = c.VK_FALSE,
        .descriptorBindingUniformTexelBufferUpdateAfterBind = c.VK_FALSE,
        .descriptorBindingStorageTexelBufferUpdateAfterBind = c.VK_FALSE,
        .descriptorBindingUpdateUnusedWhilePending = c.VK_FALSE,
        .descriptorBindingPartiallyBound = c.VK_FALSE,
        .descriptorBindingVariableDescriptorCount = c.VK_TRUE,
        .runtimeDescriptorArray = c.VK_TRUE,
    };
    const deviceFeatures = c.VkPhysicalDeviceFeatures{
        .robustBufferAccess = c.VK_FALSE,
        .fullDrawIndexUint32 = c.VK_FALSE,
        .imageCubeArray = c.VK_FALSE,
        .independentBlend = c.VK_FALSE,
        .geometryShader = c.VK_FALSE,
        .tessellationShader = c.VK_FALSE,
        .sampleRateShading = c.VK_FALSE,
        .dualSrcBlend = c.VK_FALSE,
        .logicOp = c.VK_FALSE,
        .multiDrawIndirect = c.VK_FALSE,
        .drawIndirectFirstInstance = c.VK_FALSE,
        .depthClamp = c.VK_FALSE,
        .depthBiasClamp = c.VK_FALSE,
        .fillModeNonSolid = c.VK_FALSE,
        .depthBounds = c.VK_FALSE,
        .wideLines = c.VK_FALSE,
        .largePoints = c.VK_FALSE,
        .alphaToOne = c.VK_FALSE,
        .multiViewport = c.VK_FALSE,
        .samplerAnisotropy = c.VK_FALSE,
        .textureCompressionETC2 = c.VK_FALSE,
        .textureCompressionASTC_LDR = c.VK_FALSE,
        .textureCompressionBC = c.VK_FALSE,
        .occlusionQueryPrecise = c.VK_FALSE,
        .pipelineStatisticsQuery = c.VK_FALSE,
        .vertexPipelineStoresAndAtomics = c.VK_FALSE,
        .fragmentStoresAndAtomics = c.VK_FALSE,
        .shaderTessellationAndGeometryPointSize = c.VK_FALSE,
        .shaderImageGatherExtended = c.VK_FALSE,
        .shaderStorageImageExtendedFormats = c.VK_FALSE,
        .shaderStorageImageMultisample = c.VK_FALSE,
        .shaderStorageImageReadWithoutFormat = c.VK_FALSE,
        .shaderStorageImageWriteWithoutFormat = c.VK_FALSE,
        .shaderUniformBufferArrayDynamicIndexing = c.VK_FALSE,
        .shaderSampledImageArrayDynamicIndexing = c.VK_FALSE,
        .shaderStorageBufferArrayDynamicIndexing = c.VK_FALSE,
        .shaderStorageImageArrayDynamicIndexing = c.VK_FALSE,
        .shaderClipDistance = c.VK_FALSE,
        .shaderCullDistance = c.VK_FALSE,
        .shaderFloat64 = c.VK_FALSE,
        .shaderInt64 = c.VK_FALSE,
        .shaderInt16 = c.VK_FALSE,
        .shaderResourceResidency = c.VK_FALSE,
        .shaderResourceMinLod = c.VK_FALSE,
        .sparseBinding = c.VK_FALSE,
        .sparseResidencyBuffer = c.VK_FALSE,
        .sparseResidencyImage2D = c.VK_FALSE,
        .sparseResidencyImage3D = c.VK_FALSE,
        .sparseResidency2Samples = c.VK_FALSE,
        .sparseResidency4Samples = c.VK_FALSE,
        .sparseResidency8Samples = c.VK_FALSE,
        .sparseResidency16Samples = c.VK_FALSE,
        .sparseResidencyAliased = c.VK_FALSE,
        .variableMultisampleRate = c.VK_FALSE,
        .inheritedQueries = c.VK_FALSE,
    };
    const createInfo = c.VkDeviceCreateInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
        .queueCreateInfoCount = 1,
        .pQueueCreateInfos = &queueCreateInfo,
        .pEnabledFeatures = &deviceFeatures,
        .enabledExtensionCount = @intCast(u32, deviceExtensions.len),
        .ppEnabledExtensionNames = &deviceExtensions,
        .enabledLayerCount = if (enableValidationLayers) @intCast(u32, validationLayers.len) else 0,
        .ppEnabledLayerNames = if (enableValidationLayers) &validationLayers else null,
        .pNext = &deviceFeaturesEXT,
        .flags = 0,
    };
    try checkResult(c.vkCreateDevice(vkContext.physicalDevice, &createInfo, null, &vkContext.device));
    c.vkGetDeviceQueue(vkContext.device, vkContext.queueFamilyIndex, 0, &vkContext.queue);
    c.vkGetPhysicalDeviceMemoryProperties(vkContext.physicalDevice, &vkContext.physicalDeviceMemoryProperties);
}

fn chooseSwapSurfaceFormat(availableFormats: []c.VkSurfaceFormatKHR) c.VkSurfaceFormatKHR {
    if (availableFormats.len == 1 and availableFormats[0].format == c.VkFormat.VK_FORMAT_UNDEFINED) {
        return c.VkSurfaceFormatKHR{
            .format = c.VkFormat.VK_FORMAT_B8G8R8A8_UNORM,
            .colorSpace = c.VkColorSpaceKHR.VK_COLOR_SPACE_SRGB_NONLINEAR_KHR,
        };
    }

    for (availableFormats) |availableFormat| {
        if (availableFormat.format == c.VkFormat.VK_FORMAT_B8G8R8A8_UNORM and
            availableFormat.colorSpace == c.VkColorSpaceKHR.VK_COLOR_SPACE_SRGB_NONLINEAR_KHR)
        {
            return availableFormat;
        }
    }
    return availableFormats[0];
}

fn chooseSwapPresentMode(availablePresentModes: []c.VkPresentModeKHR) c.VkPresentModeKHR {
    var bestMode: c.VkPresentModeKHR = c.VkPresentModeKHR.VK_PRESENT_MODE_FIFO_KHR;

    for (availablePresentModes) |availablePresentMode| {
        if (availablePresentMode == c.VkPresentModeKHR.VK_PRESENT_MODE_MAILBOX_KHR) {
            return availablePresentMode;
        } else if (availablePresentMode == c.VkPresentModeKHR.VK_PRESENT_MODE_IMMEDIATE_KHR) {
            bestMode = availablePresentMode;
        }
    }
    return bestMode;
}

fn chooseSwapExtent(capabilities: c.VkSurfaceCapabilitiesKHR, width: u32, height: u32) c.VkExtent2D {
    if (capabilities.currentExtent.width != std.math.maxInt(u32)) {
        return capabilities.currentExtent;
    } else {
        var actualExtent = c.VkExtent2D{
            .width = width,
            .height = height,
        };

        actualExtent.width = std.math.max(capabilities.minImageExtent.width, std.math.min(capabilities.maxImageExtent.width, actualExtent.width));
        actualExtent.height = std.math.max(capabilities.minImageExtent.height, std.math.min(capabilities.maxImageExtent.height, actualExtent.height));

        return actualExtent;
    }
}

fn createSwapChain(allocator: *Allocator, width: u32, height: u32) !void {
    var surfaceCapabilities: c.VkSurfaceCapabilitiesKHR = undefined;
    try checkResult(c.vkGetPhysicalDeviceSurfaceCapabilitiesKHR(vkContext.physicalDevice, vkContext.surface, &surfaceCapabilities));

    var formatCount: u32 = undefined;
    try checkResult(c.vkGetPhysicalDeviceSurfaceFormatsKHR(vkContext.physicalDevice, vkContext.surface, &formatCount, null));
    const surfaceFormats = try allocator.alloc(c.VkSurfaceFormatKHR, formatCount);
    defer allocator.free(surfaceFormats);
    try checkResult(c.vkGetPhysicalDeviceSurfaceFormatsKHR(vkContext.physicalDevice, vkContext.surface, &formatCount, surfaceFormats.ptr));

    var presentModeCount: u32 = undefined;
    try checkResult(c.vkGetPhysicalDeviceSurfacePresentModesKHR(vkContext.physicalDevice, vkContext.surface, &presentModeCount, null));
    const presentModes = try allocator.alloc(c.VkPresentModeKHR, presentModeCount);
    defer allocator.free(presentModes);
    try checkResult(c.vkGetPhysicalDeviceSurfacePresentModesKHR(vkContext.physicalDevice, vkContext.surface, &presentModeCount, presentModes.ptr));

    const surfaceFormat = chooseSwapSurfaceFormat(surfaceFormats);
    const presentMode = chooseSwapPresentMode(presentModes);
    const extent = chooseSwapExtent(surfaceCapabilities, width, height);

    var createInfo = c.VkSwapchainCreateInfoKHR{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
        .surface = vkContext.surface,
        .minImageCount = 2,
        .imageFormat = surfaceFormat.format,
        .imageColorSpace = surfaceFormat.colorSpace,
        .imageExtent = extent,
        .imageArrayLayers = 1,
        .imageUsage = c.VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT,
        .imageSharingMode = c.VkSharingMode.VK_SHARING_MODE_EXCLUSIVE,
        .queueFamilyIndexCount = @as(u32, 0),
        .pQueueFamilyIndices = null,
        .preTransform = surfaceCapabilities.currentTransform,
        .compositeAlpha = c.VkCompositeAlphaFlagBitsKHR.VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR,
        .presentMode = presentMode,
        .clipped = c.VK_TRUE,
        .oldSwapchain = null,
        .pNext = null,
        .flags = 0,
    };

    try checkResult(c.vkCreateSwapchainKHR(vkContext.device, &createInfo, null, &vkContext.swapChain.swapChain));
    try checkResult(c.vkGetSwapchainImagesKHR(vkContext.device, vkContext.swapChain.swapChain, &vkContext.swapChain.nrOfImages, null));
    assert(vkContext.swapChain.nrOfImages > 0 and vkContext.swapChain.nrOfImages < MAX_SWAP_CHAIN_IMAGES);
    try checkResult(c.vkGetSwapchainImagesKHR(vkContext.device, vkContext.swapChain.swapChain, &vkContext.swapChain.nrOfImages, &vkContext.swapChain.images));
    vkContext.swapChain.imageFormat = surfaceFormat.format;
    vkContext.swapChain.extent = extent;
}

fn createImageViews(allocator: *Allocator) !void {
    var i: u32 = 0;
    while (i < vkContext.swapChain.nrOfImages) : (i += 1) {
        const createInfo = c.VkImageViewCreateInfo{
            .sType = c.VkStructureType.VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
            .image = vkContext.swapChain.images[i],
            .viewType = c.VkImageViewType.VK_IMAGE_VIEW_TYPE_2D,
            .format = vkContext.swapChain.imageFormat,
            .components = c.VkComponentMapping{
                .r = c.VkComponentSwizzle.VK_COMPONENT_SWIZZLE_IDENTITY,
                .g = c.VkComponentSwizzle.VK_COMPONENT_SWIZZLE_IDENTITY,
                .b = c.VkComponentSwizzle.VK_COMPONENT_SWIZZLE_IDENTITY,
                .a = c.VkComponentSwizzle.VK_COMPONENT_SWIZZLE_IDENTITY,
            },
            .subresourceRange = c.VkImageSubresourceRange{
                .aspectMask = c.VK_IMAGE_ASPECT_COLOR_BIT,
                .baseMipLevel = 0,
                .levelCount = 1,
                .baseArrayLayer = 0,
                .layerCount = 1,
            },

            .pNext = null,
            .flags = 0,
        };
        try checkResult(c.vkCreateImageView(vkContext.device, &createInfo, null, &vkContext.swapChain.imageViews[i]));
    }
}

fn createCommandPool() !void {
    const poolInfo = c.VkCommandPoolCreateInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
        .queueFamilyIndex = vkContext.queueFamilyIndex,
        .flags = c.VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT | c.VK_COMMAND_POOL_CREATE_TRANSIENT_BIT,
        .pNext = null,
    };
    try checkResult(c.vkCreateCommandPool(vkContext.device, &poolInfo, null, &vkContext.commandPool));
}

fn createCommandBuffers(allocator: *Allocator) !void {
    const allocInfo = c.VkCommandBufferAllocateInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
        .commandPool = commandPool,
        .level = c.VK_COMMAND_BUFFER_LEVEL_PRIMARY,
        .commandBufferCount = NR_COMMAND_BUFFERS,
        .pNext = null,
    };
    try checkResult(c.vkAllocateCommandBuffers(vkContext.device, &allocInfo, commandBuffers.ptr));
}

fn createSyncObjects() !void {
    const semaphoreInfo = c.VkSemaphoreCreateInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO,
        .pNext = null,
        .flags = 0,
    };

    const fenceInfo = c.VkFenceCreateInfo{
        .sType = c.VkStructureType.VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
        .flags = c.VK_FENCE_CREATE_SIGNALED_BIT,
        .pNext = null,
    };

    var i: usize = 0;
    while (i < NR_COMMAND_BUFFERS) : (i += 1) {
        try checkResult(c.vkCreateSemaphore(vkContext.device, &semaphoreInfo, null, &vkContext.imageAvailableSemaphores[i]));
        try checkResult(c.vkCreateSemaphore(vkContext.device, &semaphoreInfo, null, &vkContext.renderFinishedSemaphores[i]));
        try checkResult(c.vkCreateFence(vkContext.device, &fenceInfo, null, &vkContext.commandBufferFences[i]));
    }
}

fn createDescriptorPool() !void {
  const descriptorPoolSizes = [3]c.VkDescriptorPoolSize {
      .{ .type = c.VkDescriptorType.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC, .descriptorCount = 1 },
      .{ .type = c.VkDescriptorType.VK_DESCRIPTOR_TYPE_SAMPLER, .descriptorCount = 2},
      .{ .type = c.VkDescriptorType.VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE, .descriptorCount = MAX_NR_OF_2D_TEXTURES } //MAX_NR_OF_2D_TEXTURES
  };

  const descriptorPoolCreateInfo = c.VkDescriptorPoolCreateInfo {
      .sType = c.VkStructureType.VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,
      .pNext = null,
      .flags = c.VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT,
      .maxSets = MAX_NR_OF_2D_TEXTURES + 4,
      .poolSizeCount = descriptorPoolSizes.len,
      .pPoolSizes = &descriptorPoolSizes,
  };
  try checkResult(c.vkCreateDescriptorPool(vkContext.device, &descriptorPoolCreateInfo, null, &vkContext.descriptorPool));
}

fn createDescriptorLayout() !void {
  // ubo && storage, dynamic
  {
    const descriptorSetLayoutBindings = [2]c.VkDescriptorSetLayoutBinding {
        .{
            .binding = 0,
            .descriptorType = c.VkDescriptorType.VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC,
            .descriptorCount = 1,
            .stageFlags = c.VK_SHADER_STAGE_ALL,
            .pImmutableSamplers = null,
        },
       .{
            .binding = 1,
            .descriptorType = c.VkDescriptorType.VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC,
            .descriptorCount = 1,
            .stageFlags = VkShaderStageFlags,
            .pImmutableSamplers = c.VK_SHADER_STAGE_ALL,
        }
    };

    const descriptorSetLayoutCreateInfo = c.VkDescriptorSetLayoutCreateInfo  {
        .sType = c.VkDescriptorType.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .bindingCount = descriptorSetLayoutBindings.len,
        .pBindings = &descriptorSetLayoutBindings,
    };
    checkResult(c.vkCreateDescriptorSetLayout(vkContext.device, &descriptorSetLayoutCreateInfo, null, &vkContext.descriptorSetLayouts.dynamic));
  }
  // textures 2D
  {
    const descriptorSetLayoutBindings = [2]c.VkDescriptorSetLayoutBinding {
        .{
            .binding = 0,
            .descriptorType = c.VkDescriptorType.VK_DESCRIPTOR_TYPE_SAMPLER,
            .descriptorCount = 2,
            .stageFlags = c.VK_SHADER_STAGE_ALL,
            .pImmutableSamplers = null,
        },
       .{
            .binding = 1,
            .descriptorType = c.VkDescriptorType.VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE,
            .descriptorCount = MAX_NR_OF_2D_TEXTURES,
            .stageFlags = c.VK_SHADER_STAGE_ALL,
            .pImmutableSamplers = null,
        }
    };

    const descriptorSetLayoutCreateInfo = c.VkDescriptorSetLayoutCreateInfo  {
        .sType = c.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .bindingCount = descriptorSetLayoutBindings.len,
        .pBindings = &descriptorSetLayoutBindings,
    };
    checkResult(c.vkCreateDescriptorSetLayout(vkContext.device, &descriptorSetLayoutCreateInfo, null, &vkContext.descriptorSetLayouts.textures2D));
  }
  // storage buffer
  {
    const descriptorSetLayoutBindings = c.VkDescriptorSetLayoutBinding {
        .binding = 0,
        .descriptorType = c.VK_DESCRIPTOR_TYPE_STORAGE_BUFFER,
        .descriptorCount = 2,
        .stageFlags = c.VK_SHADER_STAGE_ALL,
        .pImmutableSamplers = null,
    };

    const descriptorSetLayoutCreateInfo = c.VkDescriptorSetLayoutCreateInfo  {
        .sType = c.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .bindingCount = 1,
        .pBindings = &descriptorSetLayoutBindings,
    };
    checkResult(c.vkCreateDescriptorSetLayout(vkContext.device, &descriptorSetLayoutCreateInfo, null, &vkContext.descriptorSetLayouts.storageBuffer));
  }
  // storage image
  {
    const descriptorSetLayoutBindings = c.VkDescriptorSetLayoutBinding {
        .binding = 0,
        .descriptorType = c.VK_DESCRIPTOR_TYPE_STORAGE_IMAGE,
        .descriptorCount = 2,
        .stageFlags = c.VK_SHADER_STAGE_ALL,
        .pImmutableSamplers = null,
    };

    const descriptorSetLayoutCreateInfo = c.VkDescriptorSetLayoutCreateInfo  {
        .sType = c.VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
        .pNext = null,
        .flags = 0,
        .bindingCount = 1,
        .pBindings = &descriptorSetLayoutBindings,
    };
    checkResult(c.vkCreateDescriptorSetLayout(vkContext.device, &descriptorSetLayoutCreateInfo, null, &vkContext.descriptorSetLayouts.storageImage));
  }
}

pub fn initVulkan(allocator: *Allocator, window: *c.GLFWwindow, width: u32, height: u32) !void {
    try createInstance(allocator);
    if (enableValidationLayers)
        try setupDebugCallback();
    try createSurface(window);
    try pickPhysicalDevice(allocator);
    try createLogicalDevice(allocator);
    try createSwapChain(allocator, width, height);
    try createImageViews(allocator);
    try createCommandPool();
    try createSyncObjects();
    try createDescriptorPool();
}
