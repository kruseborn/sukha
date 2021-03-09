pub usingnamespace @import("std").c.builtins;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const max_align_t = f64;
pub const va_list = [*c]u8;
pub extern fn __va_start([*c][*c]u8, ...) void;
pub const __vcrt_bool = bool;
pub extern fn __security_init_cookie() void;
pub extern fn __security_check_cookie(_StackCookie: usize) void;
pub extern fn __report_gsfailure(_StackCookie: usize) noreturn;
pub extern var __security_cookie: usize;
pub const int_least8_t = i8;
pub const int_least16_t = c_short;
pub const int_least32_t = c_int;
pub const int_least64_t = c_longlong;
pub const uint_least8_t = u8;
pub const uint_least16_t = c_ushort;
pub const uint_least32_t = c_uint;
pub const uint_least64_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_int;
pub const int_fast32_t = c_int;
pub const int_fast64_t = c_longlong;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_uint;
pub const uint_fast32_t = c_uint;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const GLenum = c_uint;
pub const GLboolean = u8;
pub const GLbitfield = c_uint;
pub const GLbyte = i8;
pub const GLshort = c_short;
pub const GLint = c_int;
pub const GLsizei = c_int;
pub const GLubyte = u8;
pub const GLushort = c_ushort;
pub const GLuint = c_uint;
pub const GLfloat = f32;
pub const GLclampf = f32;
pub const GLdouble = f64;
pub const GLclampd = f64;
pub const GLvoid = c_void;
pub extern fn glAccum(op: GLenum, value: GLfloat) void;
pub extern fn glAlphaFunc(func: GLenum, ref: GLclampf) void;
pub extern fn glAreTexturesResident(n: GLsizei, textures: [*c]const GLuint, residences: [*c]GLboolean) GLboolean;
pub extern fn glArrayElement(i: GLint) void;
pub extern fn glBegin(mode: GLenum) void;
pub extern fn glBindTexture(target: GLenum, texture: GLuint) void;
pub extern fn glBitmap(width: GLsizei, height: GLsizei, xorig: GLfloat, yorig: GLfloat, xmove: GLfloat, ymove: GLfloat, bitmap: [*c]const GLubyte) void;
pub extern fn glBlendFunc(sfactor: GLenum, dfactor: GLenum) void;
pub extern fn glCallList(list: GLuint) void;
pub extern fn glCallLists(n: GLsizei, type: GLenum, lists: ?*const GLvoid) void;
pub extern fn glClear(mask: GLbitfield) void;
pub extern fn glClearAccum(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
pub extern fn glClearColor(red: GLclampf, green: GLclampf, blue: GLclampf, alpha: GLclampf) void;
pub extern fn glClearDepth(depth: GLclampd) void;
pub extern fn glClearIndex(c: GLfloat) void;
pub extern fn glClearStencil(s: GLint) void;
pub extern fn glClipPlane(plane: GLenum, equation: [*c]const GLdouble) void;
pub extern fn glColor3b(red: GLbyte, green: GLbyte, blue: GLbyte) void;
pub extern fn glColor3bv(v: [*c]const GLbyte) void;
pub extern fn glColor3d(red: GLdouble, green: GLdouble, blue: GLdouble) void;
pub extern fn glColor3dv(v: [*c]const GLdouble) void;
pub extern fn glColor3f(red: GLfloat, green: GLfloat, blue: GLfloat) void;
pub extern fn glColor3fv(v: [*c]const GLfloat) void;
pub extern fn glColor3i(red: GLint, green: GLint, blue: GLint) void;
pub extern fn glColor3iv(v: [*c]const GLint) void;
pub extern fn glColor3s(red: GLshort, green: GLshort, blue: GLshort) void;
pub extern fn glColor3sv(v: [*c]const GLshort) void;
pub extern fn glColor3ub(red: GLubyte, green: GLubyte, blue: GLubyte) void;
pub extern fn glColor3ubv(v: [*c]const GLubyte) void;
pub extern fn glColor3ui(red: GLuint, green: GLuint, blue: GLuint) void;
pub extern fn glColor3uiv(v: [*c]const GLuint) void;
pub extern fn glColor3us(red: GLushort, green: GLushort, blue: GLushort) void;
pub extern fn glColor3usv(v: [*c]const GLushort) void;
pub extern fn glColor4b(red: GLbyte, green: GLbyte, blue: GLbyte, alpha: GLbyte) void;
pub extern fn glColor4bv(v: [*c]const GLbyte) void;
pub extern fn glColor4d(red: GLdouble, green: GLdouble, blue: GLdouble, alpha: GLdouble) void;
pub extern fn glColor4dv(v: [*c]const GLdouble) void;
pub extern fn glColor4f(red: GLfloat, green: GLfloat, blue: GLfloat, alpha: GLfloat) void;
pub extern fn glColor4fv(v: [*c]const GLfloat) void;
pub extern fn glColor4i(red: GLint, green: GLint, blue: GLint, alpha: GLint) void;
pub extern fn glColor4iv(v: [*c]const GLint) void;
pub extern fn glColor4s(red: GLshort, green: GLshort, blue: GLshort, alpha: GLshort) void;
pub extern fn glColor4sv(v: [*c]const GLshort) void;
pub extern fn glColor4ub(red: GLubyte, green: GLubyte, blue: GLubyte, alpha: GLubyte) void;
pub extern fn glColor4ubv(v: [*c]const GLubyte) void;
pub extern fn glColor4ui(red: GLuint, green: GLuint, blue: GLuint, alpha: GLuint) void;
pub extern fn glColor4uiv(v: [*c]const GLuint) void;
pub extern fn glColor4us(red: GLushort, green: GLushort, blue: GLushort, alpha: GLushort) void;
pub extern fn glColor4usv(v: [*c]const GLushort) void;
pub extern fn glColorMask(red: GLboolean, green: GLboolean, blue: GLboolean, alpha: GLboolean) void;
pub extern fn glColorMaterial(face: GLenum, mode: GLenum) void;
pub extern fn glColorPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const GLvoid) void;
pub extern fn glCopyPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, type: GLenum) void;
pub extern fn glCopyTexImage1D(target: GLenum, level: GLint, internalFormat: GLenum, x: GLint, y: GLint, width: GLsizei, border: GLint) void;
pub extern fn glCopyTexImage2D(target: GLenum, level: GLint, internalFormat: GLenum, x: GLint, y: GLint, width: GLsizei, height: GLsizei, border: GLint) void;
pub extern fn glCopyTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, x: GLint, y: GLint, width: GLsizei) void;
pub extern fn glCopyTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
pub extern fn glCullFace(mode: GLenum) void;
pub extern fn glDeleteLists(list: GLuint, range: GLsizei) void;
pub extern fn glDeleteTextures(n: GLsizei, textures: [*c]const GLuint) void;
pub extern fn glDepthFunc(func: GLenum) void;
pub extern fn glDepthMask(flag: GLboolean) void;
pub extern fn glDepthRange(zNear: GLclampd, zFar: GLclampd) void;
pub extern fn glDisable(cap: GLenum) void;
pub extern fn glDisableClientState(array: GLenum) void;
pub extern fn glDrawArrays(mode: GLenum, first: GLint, count: GLsizei) void;
pub extern fn glDrawBuffer(mode: GLenum) void;
pub extern fn glDrawElements(mode: GLenum, count: GLsizei, type: GLenum, indices: ?*const GLvoid) void;
pub extern fn glDrawPixels(width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ?*const GLvoid) void;
pub extern fn glEdgeFlag(flag: GLboolean) void;
pub extern fn glEdgeFlagPointer(stride: GLsizei, pointer: ?*const GLvoid) void;
pub extern fn glEdgeFlagv(flag: [*c]const GLboolean) void;
pub extern fn glEnable(cap: GLenum) void;
pub extern fn glEnableClientState(array: GLenum) void;
pub extern fn glEnd() void;
pub extern fn glEndList() void;
pub extern fn glEvalCoord1d(u: GLdouble) void;
pub extern fn glEvalCoord1dv(u: [*c]const GLdouble) void;
pub extern fn glEvalCoord1f(u: GLfloat) void;
pub extern fn glEvalCoord1fv(u: [*c]const GLfloat) void;
pub extern fn glEvalCoord2d(u: GLdouble, v: GLdouble) void;
pub extern fn glEvalCoord2dv(u: [*c]const GLdouble) void;
pub extern fn glEvalCoord2f(u: GLfloat, v: GLfloat) void;
pub extern fn glEvalCoord2fv(u: [*c]const GLfloat) void;
pub extern fn glEvalMesh1(mode: GLenum, i1: GLint, i2: GLint) void;
pub extern fn glEvalMesh2(mode: GLenum, i1: GLint, i2: GLint, j1: GLint, j2: GLint) void;
pub extern fn glEvalPoint1(i: GLint) void;
pub extern fn glEvalPoint2(i: GLint, j: GLint) void;
pub extern fn glFeedbackBuffer(size: GLsizei, type: GLenum, buffer: [*c]GLfloat) void;
pub extern fn glFinish() void;
pub extern fn glFlush() void;
pub extern fn glFogf(pname: GLenum, param: GLfloat) void;
pub extern fn glFogfv(pname: GLenum, params: [*c]const GLfloat) void;
pub extern fn glFogi(pname: GLenum, param: GLint) void;
pub extern fn glFogiv(pname: GLenum, params: [*c]const GLint) void;
pub extern fn glFrontFace(mode: GLenum) void;
pub extern fn glFrustum(left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void;
pub extern fn glGenLists(range: GLsizei) GLuint;
pub extern fn glGenTextures(n: GLsizei, textures: [*c]GLuint) void;
pub extern fn glGetBooleanv(pname: GLenum, params: [*c]GLboolean) void;
pub extern fn glGetClipPlane(plane: GLenum, equation: [*c]GLdouble) void;
pub extern fn glGetDoublev(pname: GLenum, params: [*c]GLdouble) void;
pub extern fn glGetError() GLenum;
pub extern fn glGetFloatv(pname: GLenum, params: [*c]GLfloat) void;
pub extern fn glGetIntegerv(pname: GLenum, params: [*c]GLint) void;
pub extern fn glGetLightfv(light: GLenum, pname: GLenum, params: [*c]GLfloat) void;
pub extern fn glGetLightiv(light: GLenum, pname: GLenum, params: [*c]GLint) void;
pub extern fn glGetMapdv(target: GLenum, query: GLenum, v: [*c]GLdouble) void;
pub extern fn glGetMapfv(target: GLenum, query: GLenum, v: [*c]GLfloat) void;
pub extern fn glGetMapiv(target: GLenum, query: GLenum, v: [*c]GLint) void;
pub extern fn glGetMaterialfv(face: GLenum, pname: GLenum, params: [*c]GLfloat) void;
pub extern fn glGetMaterialiv(face: GLenum, pname: GLenum, params: [*c]GLint) void;
pub extern fn glGetPixelMapfv(map: GLenum, values: [*c]GLfloat) void;
pub extern fn glGetPixelMapuiv(map: GLenum, values: [*c]GLuint) void;
pub extern fn glGetPixelMapusv(map: GLenum, values: [*c]GLushort) void;
pub extern fn glGetPointerv(pname: GLenum, params: [*c]?*GLvoid) void;
pub extern fn glGetPolygonStipple(mask: [*c]GLubyte) void;
pub extern fn glGetString(name: GLenum) [*c]const GLubyte;
pub extern fn glGetTexEnvfv(target: GLenum, pname: GLenum, params: [*c]GLfloat) void;
pub extern fn glGetTexEnviv(target: GLenum, pname: GLenum, params: [*c]GLint) void;
pub extern fn glGetTexGendv(coord: GLenum, pname: GLenum, params: [*c]GLdouble) void;
pub extern fn glGetTexGenfv(coord: GLenum, pname: GLenum, params: [*c]GLfloat) void;
pub extern fn glGetTexGeniv(coord: GLenum, pname: GLenum, params: [*c]GLint) void;
pub extern fn glGetTexImage(target: GLenum, level: GLint, format: GLenum, type: GLenum, pixels: ?*GLvoid) void;
pub extern fn glGetTexLevelParameterfv(target: GLenum, level: GLint, pname: GLenum, params: [*c]GLfloat) void;
pub extern fn glGetTexLevelParameteriv(target: GLenum, level: GLint, pname: GLenum, params: [*c]GLint) void;
pub extern fn glGetTexParameterfv(target: GLenum, pname: GLenum, params: [*c]GLfloat) void;
pub extern fn glGetTexParameteriv(target: GLenum, pname: GLenum, params: [*c]GLint) void;
pub extern fn glHint(target: GLenum, mode: GLenum) void;
pub extern fn glIndexMask(mask: GLuint) void;
pub extern fn glIndexPointer(type: GLenum, stride: GLsizei, pointer: ?*const GLvoid) void;
pub extern fn glIndexd(c: GLdouble) void;
pub extern fn glIndexdv(c: [*c]const GLdouble) void;
pub extern fn glIndexf(c: GLfloat) void;
pub extern fn glIndexfv(c: [*c]const GLfloat) void;
pub extern fn glIndexi(c: GLint) void;
pub extern fn glIndexiv(c: [*c]const GLint) void;
pub extern fn glIndexs(c: GLshort) void;
pub extern fn glIndexsv(c: [*c]const GLshort) void;
pub extern fn glIndexub(c: GLubyte) void;
pub extern fn glIndexubv(c: [*c]const GLubyte) void;
pub extern fn glInitNames() void;
pub extern fn glInterleavedArrays(format: GLenum, stride: GLsizei, pointer: ?*const GLvoid) void;
pub extern fn glIsEnabled(cap: GLenum) GLboolean;
pub extern fn glIsList(list: GLuint) GLboolean;
pub extern fn glIsTexture(texture: GLuint) GLboolean;
pub extern fn glLightModelf(pname: GLenum, param: GLfloat) void;
pub extern fn glLightModelfv(pname: GLenum, params: [*c]const GLfloat) void;
pub extern fn glLightModeli(pname: GLenum, param: GLint) void;
pub extern fn glLightModeliv(pname: GLenum, params: [*c]const GLint) void;
pub extern fn glLightf(light: GLenum, pname: GLenum, param: GLfloat) void;
pub extern fn glLightfv(light: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
pub extern fn glLighti(light: GLenum, pname: GLenum, param: GLint) void;
pub extern fn glLightiv(light: GLenum, pname: GLenum, params: [*c]const GLint) void;
pub extern fn glLineStipple(factor: GLint, pattern: GLushort) void;
pub extern fn glLineWidth(width: GLfloat) void;
pub extern fn glListBase(base: GLuint) void;
pub extern fn glLoadIdentity() void;
pub extern fn glLoadMatrixd(m: [*c]const GLdouble) void;
pub extern fn glLoadMatrixf(m: [*c]const GLfloat) void;
pub extern fn glLoadName(name: GLuint) void;
pub extern fn glLogicOp(opcode: GLenum) void;
pub extern fn glMap1d(target: GLenum, u1: GLdouble, u2: GLdouble, stride: GLint, order: GLint, points: [*c]const GLdouble) void;
pub extern fn glMap1f(target: GLenum, u1: GLfloat, u2: GLfloat, stride: GLint, order: GLint, points: [*c]const GLfloat) void;
pub extern fn glMap2d(target: GLenum, u1: GLdouble, u2: GLdouble, ustride: GLint, uorder: GLint, v1: GLdouble, v2: GLdouble, vstride: GLint, vorder: GLint, points: [*c]const GLdouble) void;
pub extern fn glMap2f(target: GLenum, u1: GLfloat, u2: GLfloat, ustride: GLint, uorder: GLint, v1: GLfloat, v2: GLfloat, vstride: GLint, vorder: GLint, points: [*c]const GLfloat) void;
pub extern fn glMapGrid1d(un: GLint, u1: GLdouble, u2: GLdouble) void;
pub extern fn glMapGrid1f(un: GLint, u1: GLfloat, u2: GLfloat) void;
pub extern fn glMapGrid2d(un: GLint, u1: GLdouble, u2: GLdouble, vn: GLint, v1: GLdouble, v2: GLdouble) void;
pub extern fn glMapGrid2f(un: GLint, u1: GLfloat, u2: GLfloat, vn: GLint, v1: GLfloat, v2: GLfloat) void;
pub extern fn glMaterialf(face: GLenum, pname: GLenum, param: GLfloat) void;
pub extern fn glMaterialfv(face: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
pub extern fn glMateriali(face: GLenum, pname: GLenum, param: GLint) void;
pub extern fn glMaterialiv(face: GLenum, pname: GLenum, params: [*c]const GLint) void;
pub extern fn glMatrixMode(mode: GLenum) void;
pub extern fn glMultMatrixd(m: [*c]const GLdouble) void;
pub extern fn glMultMatrixf(m: [*c]const GLfloat) void;
pub extern fn glNewList(list: GLuint, mode: GLenum) void;
pub extern fn glNormal3b(nx: GLbyte, ny: GLbyte, nz: GLbyte) void;
pub extern fn glNormal3bv(v: [*c]const GLbyte) void;
pub extern fn glNormal3d(nx: GLdouble, ny: GLdouble, nz: GLdouble) void;
pub extern fn glNormal3dv(v: [*c]const GLdouble) void;
pub extern fn glNormal3f(nx: GLfloat, ny: GLfloat, nz: GLfloat) void;
pub extern fn glNormal3fv(v: [*c]const GLfloat) void;
pub extern fn glNormal3i(nx: GLint, ny: GLint, nz: GLint) void;
pub extern fn glNormal3iv(v: [*c]const GLint) void;
pub extern fn glNormal3s(nx: GLshort, ny: GLshort, nz: GLshort) void;
pub extern fn glNormal3sv(v: [*c]const GLshort) void;
pub extern fn glNormalPointer(type: GLenum, stride: GLsizei, pointer: ?*const GLvoid) void;
pub extern fn glOrtho(left: GLdouble, right: GLdouble, bottom: GLdouble, top: GLdouble, zNear: GLdouble, zFar: GLdouble) void;
pub extern fn glPassThrough(token: GLfloat) void;
pub extern fn glPixelMapfv(map: GLenum, mapsize: GLsizei, values: [*c]const GLfloat) void;
pub extern fn glPixelMapuiv(map: GLenum, mapsize: GLsizei, values: [*c]const GLuint) void;
pub extern fn glPixelMapusv(map: GLenum, mapsize: GLsizei, values: [*c]const GLushort) void;
pub extern fn glPixelStoref(pname: GLenum, param: GLfloat) void;
pub extern fn glPixelStorei(pname: GLenum, param: GLint) void;
pub extern fn glPixelTransferf(pname: GLenum, param: GLfloat) void;
pub extern fn glPixelTransferi(pname: GLenum, param: GLint) void;
pub extern fn glPixelZoom(xfactor: GLfloat, yfactor: GLfloat) void;
pub extern fn glPointSize(size: GLfloat) void;
pub extern fn glPolygonMode(face: GLenum, mode: GLenum) void;
pub extern fn glPolygonOffset(factor: GLfloat, units: GLfloat) void;
pub extern fn glPolygonStipple(mask: [*c]const GLubyte) void;
pub extern fn glPopAttrib() void;
pub extern fn glPopClientAttrib() void;
pub extern fn glPopMatrix() void;
pub extern fn glPopName() void;
pub extern fn glPrioritizeTextures(n: GLsizei, textures: [*c]const GLuint, priorities: [*c]const GLclampf) void;
pub extern fn glPushAttrib(mask: GLbitfield) void;
pub extern fn glPushClientAttrib(mask: GLbitfield) void;
pub extern fn glPushMatrix() void;
pub extern fn glPushName(name: GLuint) void;
pub extern fn glRasterPos2d(x: GLdouble, y: GLdouble) void;
pub extern fn glRasterPos2dv(v: [*c]const GLdouble) void;
pub extern fn glRasterPos2f(x: GLfloat, y: GLfloat) void;
pub extern fn glRasterPos2fv(v: [*c]const GLfloat) void;
pub extern fn glRasterPos2i(x: GLint, y: GLint) void;
pub extern fn glRasterPos2iv(v: [*c]const GLint) void;
pub extern fn glRasterPos2s(x: GLshort, y: GLshort) void;
pub extern fn glRasterPos2sv(v: [*c]const GLshort) void;
pub extern fn glRasterPos3d(x: GLdouble, y: GLdouble, z: GLdouble) void;
pub extern fn glRasterPos3dv(v: [*c]const GLdouble) void;
pub extern fn glRasterPos3f(x: GLfloat, y: GLfloat, z: GLfloat) void;
pub extern fn glRasterPos3fv(v: [*c]const GLfloat) void;
pub extern fn glRasterPos3i(x: GLint, y: GLint, z: GLint) void;
pub extern fn glRasterPos3iv(v: [*c]const GLint) void;
pub extern fn glRasterPos3s(x: GLshort, y: GLshort, z: GLshort) void;
pub extern fn glRasterPos3sv(v: [*c]const GLshort) void;
pub extern fn glRasterPos4d(x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void;
pub extern fn glRasterPos4dv(v: [*c]const GLdouble) void;
pub extern fn glRasterPos4f(x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void;
pub extern fn glRasterPos4fv(v: [*c]const GLfloat) void;
pub extern fn glRasterPos4i(x: GLint, y: GLint, z: GLint, w: GLint) void;
pub extern fn glRasterPos4iv(v: [*c]const GLint) void;
pub extern fn glRasterPos4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) void;
pub extern fn glRasterPos4sv(v: [*c]const GLshort) void;
pub extern fn glReadBuffer(mode: GLenum) void;
pub extern fn glReadPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ?*GLvoid) void;
pub extern fn glRectd(x1: GLdouble, y1: GLdouble, x2: GLdouble, y2: GLdouble) void;
pub extern fn glRectdv(v1: [*c]const GLdouble, v2: [*c]const GLdouble) void;
pub extern fn glRectf(x1: GLfloat, y1: GLfloat, x2: GLfloat, y2: GLfloat) void;
pub extern fn glRectfv(v1: [*c]const GLfloat, v2: [*c]const GLfloat) void;
pub extern fn glRecti(x1: GLint, y1: GLint, x2: GLint, y2: GLint) void;
pub extern fn glRectiv(v1: [*c]const GLint, v2: [*c]const GLint) void;
pub extern fn glRects(x1: GLshort, y1: GLshort, x2: GLshort, y2: GLshort) void;
pub extern fn glRectsv(v1: [*c]const GLshort, v2: [*c]const GLshort) void;
pub extern fn glRenderMode(mode: GLenum) GLint;
pub extern fn glRotated(angle: GLdouble, x: GLdouble, y: GLdouble, z: GLdouble) void;
pub extern fn glRotatef(angle: GLfloat, x: GLfloat, y: GLfloat, z: GLfloat) void;
pub extern fn glScaled(x: GLdouble, y: GLdouble, z: GLdouble) void;
pub extern fn glScalef(x: GLfloat, y: GLfloat, z: GLfloat) void;
pub extern fn glScissor(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
pub extern fn glSelectBuffer(size: GLsizei, buffer: [*c]GLuint) void;
pub extern fn glShadeModel(mode: GLenum) void;
pub extern fn glStencilFunc(func: GLenum, ref: GLint, mask: GLuint) void;
pub extern fn glStencilMask(mask: GLuint) void;
pub extern fn glStencilOp(fail: GLenum, zfail: GLenum, zpass: GLenum) void;
pub extern fn glTexCoord1d(s: GLdouble) void;
pub extern fn glTexCoord1dv(v: [*c]const GLdouble) void;
pub extern fn glTexCoord1f(s: GLfloat) void;
pub extern fn glTexCoord1fv(v: [*c]const GLfloat) void;
pub extern fn glTexCoord1i(s: GLint) void;
pub extern fn glTexCoord1iv(v: [*c]const GLint) void;
pub extern fn glTexCoord1s(s: GLshort) void;
pub extern fn glTexCoord1sv(v: [*c]const GLshort) void;
pub extern fn glTexCoord2d(s: GLdouble, t: GLdouble) void;
pub extern fn glTexCoord2dv(v: [*c]const GLdouble) void;
pub extern fn glTexCoord2f(s: GLfloat, t: GLfloat) void;
pub extern fn glTexCoord2fv(v: [*c]const GLfloat) void;
pub extern fn glTexCoord2i(s: GLint, t: GLint) void;
pub extern fn glTexCoord2iv(v: [*c]const GLint) void;
pub extern fn glTexCoord2s(s: GLshort, t: GLshort) void;
pub extern fn glTexCoord2sv(v: [*c]const GLshort) void;
pub extern fn glTexCoord3d(s: GLdouble, t: GLdouble, r: GLdouble) void;
pub extern fn glTexCoord3dv(v: [*c]const GLdouble) void;
pub extern fn glTexCoord3f(s: GLfloat, t: GLfloat, r: GLfloat) void;
pub extern fn glTexCoord3fv(v: [*c]const GLfloat) void;
pub extern fn glTexCoord3i(s: GLint, t: GLint, r: GLint) void;
pub extern fn glTexCoord3iv(v: [*c]const GLint) void;
pub extern fn glTexCoord3s(s: GLshort, t: GLshort, r: GLshort) void;
pub extern fn glTexCoord3sv(v: [*c]const GLshort) void;
pub extern fn glTexCoord4d(s: GLdouble, t: GLdouble, r: GLdouble, q: GLdouble) void;
pub extern fn glTexCoord4dv(v: [*c]const GLdouble) void;
pub extern fn glTexCoord4f(s: GLfloat, t: GLfloat, r: GLfloat, q: GLfloat) void;
pub extern fn glTexCoord4fv(v: [*c]const GLfloat) void;
pub extern fn glTexCoord4i(s: GLint, t: GLint, r: GLint, q: GLint) void;
pub extern fn glTexCoord4iv(v: [*c]const GLint) void;
pub extern fn glTexCoord4s(s: GLshort, t: GLshort, r: GLshort, q: GLshort) void;
pub extern fn glTexCoord4sv(v: [*c]const GLshort) void;
pub extern fn glTexCoordPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const GLvoid) void;
pub extern fn glTexEnvf(target: GLenum, pname: GLenum, param: GLfloat) void;
pub extern fn glTexEnvfv(target: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
pub extern fn glTexEnvi(target: GLenum, pname: GLenum, param: GLint) void;
pub extern fn glTexEnviv(target: GLenum, pname: GLenum, params: [*c]const GLint) void;
pub extern fn glTexGend(coord: GLenum, pname: GLenum, param: GLdouble) void;
pub extern fn glTexGendv(coord: GLenum, pname: GLenum, params: [*c]const GLdouble) void;
pub extern fn glTexGenf(coord: GLenum, pname: GLenum, param: GLfloat) void;
pub extern fn glTexGenfv(coord: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
pub extern fn glTexGeni(coord: GLenum, pname: GLenum, param: GLint) void;
pub extern fn glTexGeniv(coord: GLenum, pname: GLenum, params: [*c]const GLint) void;
pub extern fn glTexImage1D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: ?*const GLvoid) void;
pub extern fn glTexImage2D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: ?*const GLvoid) void;
pub extern fn glTexParameterf(target: GLenum, pname: GLenum, param: GLfloat) void;
pub extern fn glTexParameterfv(target: GLenum, pname: GLenum, params: [*c]const GLfloat) void;
pub extern fn glTexParameteri(target: GLenum, pname: GLenum, param: GLint) void;
pub extern fn glTexParameteriv(target: GLenum, pname: GLenum, params: [*c]const GLint) void;
pub extern fn glTexSubImage1D(target: GLenum, level: GLint, xoffset: GLint, width: GLsizei, format: GLenum, type: GLenum, pixels: ?*const GLvoid) void;
pub extern fn glTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ?*const GLvoid) void;
pub extern fn glTranslated(x: GLdouble, y: GLdouble, z: GLdouble) void;
pub extern fn glTranslatef(x: GLfloat, y: GLfloat, z: GLfloat) void;
pub extern fn glVertex2d(x: GLdouble, y: GLdouble) void;
pub extern fn glVertex2dv(v: [*c]const GLdouble) void;
pub extern fn glVertex2f(x: GLfloat, y: GLfloat) void;
pub extern fn glVertex2fv(v: [*c]const GLfloat) void;
pub extern fn glVertex2i(x: GLint, y: GLint) void;
pub extern fn glVertex2iv(v: [*c]const GLint) void;
pub extern fn glVertex2s(x: GLshort, y: GLshort) void;
pub extern fn glVertex2sv(v: [*c]const GLshort) void;
pub extern fn glVertex3d(x: GLdouble, y: GLdouble, z: GLdouble) void;
pub extern fn glVertex3dv(v: [*c]const GLdouble) void;
pub extern fn glVertex3f(x: GLfloat, y: GLfloat, z: GLfloat) void;
pub extern fn glVertex3fv(v: [*c]const GLfloat) void;
pub extern fn glVertex3i(x: GLint, y: GLint, z: GLint) void;
pub extern fn glVertex3iv(v: [*c]const GLint) void;
pub extern fn glVertex3s(x: GLshort, y: GLshort, z: GLshort) void;
pub extern fn glVertex3sv(v: [*c]const GLshort) void;
pub extern fn glVertex4d(x: GLdouble, y: GLdouble, z: GLdouble, w: GLdouble) void;
pub extern fn glVertex4dv(v: [*c]const GLdouble) void;
pub extern fn glVertex4f(x: GLfloat, y: GLfloat, z: GLfloat, w: GLfloat) void;
pub extern fn glVertex4fv(v: [*c]const GLfloat) void;
pub extern fn glVertex4i(x: GLint, y: GLint, z: GLint, w: GLint) void;
pub extern fn glVertex4iv(v: [*c]const GLint) void;
pub extern fn glVertex4s(x: GLshort, y: GLshort, z: GLshort, w: GLshort) void;
pub extern fn glVertex4sv(v: [*c]const GLshort) void;
pub extern fn glVertexPointer(size: GLint, type: GLenum, stride: GLsizei, pointer: ?*const GLvoid) void;
pub extern fn glViewport(x: GLint, y: GLint, width: GLsizei, height: GLsizei) void;
pub const PFNGLARRAYELEMENTEXTPROC = ?fn (GLint) callconv(.C) void;
pub const PFNGLDRAWARRAYSEXTPROC = ?fn (GLenum, GLint, GLsizei) callconv(.C) void;
pub const PFNGLVERTEXPOINTEREXTPROC = ?fn (GLint, GLenum, GLsizei, GLsizei, ?*const GLvoid) callconv(.C) void;
pub const PFNGLNORMALPOINTEREXTPROC = ?fn (GLenum, GLsizei, GLsizei, ?*const GLvoid) callconv(.C) void;
pub const PFNGLCOLORPOINTEREXTPROC = ?fn (GLint, GLenum, GLsizei, GLsizei, ?*const GLvoid) callconv(.C) void;
pub const PFNGLINDEXPOINTEREXTPROC = ?fn (GLenum, GLsizei, GLsizei, ?*const GLvoid) callconv(.C) void;
pub const PFNGLTEXCOORDPOINTEREXTPROC = ?fn (GLint, GLenum, GLsizei, GLsizei, ?*const GLvoid) callconv(.C) void;
pub const PFNGLEDGEFLAGPOINTEREXTPROC = ?fn (GLsizei, GLsizei, [*c]const GLboolean) callconv(.C) void;
pub const PFNGLGETPOINTERVEXTPROC = ?fn (GLenum, [*c]?*GLvoid) callconv(.C) void;
pub const PFNGLARRAYELEMENTARRAYEXTPROC = ?fn (GLenum, GLsizei, ?*const GLvoid) callconv(.C) void;
pub const PFNGLDRAWRANGEELEMENTSWINPROC = ?fn (GLenum, GLuint, GLuint, GLsizei, GLenum, ?*const GLvoid) callconv(.C) void;
pub const PFNGLADDSWAPHINTRECTWINPROC = ?fn (GLint, GLint, GLsizei, GLsizei) callconv(.C) void;
pub const PFNGLCOLORTABLEEXTPROC = ?fn (GLenum, GLenum, GLsizei, GLenum, GLenum, ?*const GLvoid) callconv(.C) void;
pub const PFNGLCOLORSUBTABLEEXTPROC = ?fn (GLenum, GLsizei, GLsizei, GLenum, GLenum, ?*const GLvoid) callconv(.C) void;
pub const PFNGLGETCOLORTABLEEXTPROC = ?fn (GLenum, GLenum, GLenum, ?*GLvoid) callconv(.C) void;
pub const PFNGLGETCOLORTABLEPARAMETERIVEXTPROC = ?fn (GLenum, GLenum, [*c]GLint) callconv(.C) void;
pub const PFNGLGETCOLORTABLEPARAMETERFVEXTPROC = ?fn (GLenum, GLenum, [*c]GLfloat) callconv(.C) void;
pub const GLFWglproc = ?fn () callconv(.C) void;
pub const GLFWvkproc = ?fn () callconv(.C) void;
pub const struct_GLFWmonitor = opaque {};
pub const GLFWmonitor = struct_GLFWmonitor;
pub const struct_GLFWwindow = opaque {};
pub const GLFWwindow = struct_GLFWwindow;
pub const struct_GLFWcursor = opaque {};
pub const GLFWcursor = struct_GLFWcursor;
pub const GLFWerrorfun = ?fn (c_int, [*c]const u8) callconv(.C) void;
pub const GLFWwindowposfun = ?fn (?*GLFWwindow, c_int, c_int) callconv(.C) void;
pub const GLFWwindowsizefun = ?fn (?*GLFWwindow, c_int, c_int) callconv(.C) void;
pub const GLFWwindowclosefun = ?fn (?*GLFWwindow) callconv(.C) void;
pub const GLFWwindowrefreshfun = ?fn (?*GLFWwindow) callconv(.C) void;
pub const GLFWwindowfocusfun = ?fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWwindowiconifyfun = ?fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWwindowmaximizefun = ?fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWframebuffersizefun = ?fn (?*GLFWwindow, c_int, c_int) callconv(.C) void;
pub const GLFWwindowcontentscalefun = ?fn (?*GLFWwindow, f32, f32) callconv(.C) void;
pub const GLFWmousebuttonfun = ?fn (?*GLFWwindow, c_int, c_int, c_int) callconv(.C) void;
pub const GLFWcursorposfun = ?fn (?*GLFWwindow, f64, f64) callconv(.C) void;
pub const GLFWcursorenterfun = ?fn (?*GLFWwindow, c_int) callconv(.C) void;
pub const GLFWscrollfun = ?fn (?*GLFWwindow, f64, f64) callconv(.C) void;
pub const GLFWkeyfun = ?fn (?*GLFWwindow, c_int, c_int, c_int, c_int) callconv(.C) void;
pub const GLFWcharfun = ?fn (?*GLFWwindow, c_uint) callconv(.C) void;
pub const GLFWcharmodsfun = ?fn (?*GLFWwindow, c_uint, c_int) callconv(.C) void;
pub const GLFWdropfun = ?fn (?*GLFWwindow, c_int, [*c][*c]const u8) callconv(.C) void;
pub const GLFWmonitorfun = ?fn (?*GLFWmonitor, c_int) callconv(.C) void;
pub const GLFWjoystickfun = ?fn (c_int, c_int) callconv(.C) void;
pub const struct_GLFWvidmode = extern struct {
    width: c_int,
    height: c_int,
    redBits: c_int,
    greenBits: c_int,
    blueBits: c_int,
    refreshRate: c_int,
};
pub const GLFWvidmode = struct_GLFWvidmode;
pub const struct_GLFWgammaramp = extern struct {
    red: [*c]c_ushort,
    green: [*c]c_ushort,
    blue: [*c]c_ushort,
    size: c_uint,
};
pub const GLFWgammaramp = struct_GLFWgammaramp;
pub const struct_GLFWimage = extern struct {
    width: c_int,
    height: c_int,
    pixels: [*c]u8,
};
pub const GLFWimage = struct_GLFWimage;
pub const struct_GLFWgamepadstate = extern struct {
    buttons: [15]u8,
    axes: [6]f32,
};
pub const GLFWgamepadstate = struct_GLFWgamepadstate;
pub extern fn glfwInit() c_int;
pub extern fn glfwTerminate() void;
pub extern fn glfwInitHint(hint: c_int, value: c_int) void;
pub extern fn glfwGetVersion(major: [*c]c_int, minor: [*c]c_int, rev: [*c]c_int) void;
pub extern fn glfwGetVersionString() [*c]const u8;
pub extern fn glfwGetError(description: [*c][*c]const u8) c_int;
pub extern fn glfwSetErrorCallback(callback: GLFWerrorfun) GLFWerrorfun;
pub extern fn glfwGetMonitors(count: [*c]c_int) [*c]?*GLFWmonitor;
pub extern fn glfwGetPrimaryMonitor() ?*GLFWmonitor;
pub extern fn glfwGetMonitorPos(monitor: ?*GLFWmonitor, xpos: [*c]c_int, ypos: [*c]c_int) void;
pub extern fn glfwGetMonitorWorkarea(monitor: ?*GLFWmonitor, xpos: [*c]c_int, ypos: [*c]c_int, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn glfwGetMonitorPhysicalSize(monitor: ?*GLFWmonitor, widthMM: [*c]c_int, heightMM: [*c]c_int) void;
pub extern fn glfwGetMonitorContentScale(monitor: ?*GLFWmonitor, xscale: [*c]f32, yscale: [*c]f32) void;
pub extern fn glfwGetMonitorName(monitor: ?*GLFWmonitor) [*c]const u8;
pub extern fn glfwSetMonitorUserPointer(monitor: ?*GLFWmonitor, pointer: ?*c_void) void;
pub extern fn glfwGetMonitorUserPointer(monitor: ?*GLFWmonitor) ?*c_void;
pub extern fn glfwSetMonitorCallback(callback: GLFWmonitorfun) GLFWmonitorfun;
pub extern fn glfwGetVideoModes(monitor: ?*GLFWmonitor, count: [*c]c_int) [*c]const GLFWvidmode;
pub extern fn glfwGetVideoMode(monitor: ?*GLFWmonitor) [*c]const GLFWvidmode;
pub extern fn glfwSetGamma(monitor: ?*GLFWmonitor, gamma: f32) void;
pub extern fn glfwGetGammaRamp(monitor: ?*GLFWmonitor) [*c]const GLFWgammaramp;
pub extern fn glfwSetGammaRamp(monitor: ?*GLFWmonitor, ramp: [*c]const GLFWgammaramp) void;
pub extern fn glfwDefaultWindowHints() void;
pub extern fn glfwWindowHint(hint: c_int, value: c_int) void;
pub extern fn glfwWindowHintString(hint: c_int, value: [*c]const u8) void;
pub extern fn glfwCreateWindow(width: c_int, height: c_int, title: [*c]const u8, monitor: ?*GLFWmonitor, share: ?*GLFWwindow) ?*GLFWwindow;
pub extern fn glfwDestroyWindow(window: ?*GLFWwindow) void;
pub extern fn glfwWindowShouldClose(window: ?*GLFWwindow) c_int;
pub extern fn glfwSetWindowShouldClose(window: ?*GLFWwindow, value: c_int) void;
pub extern fn glfwSetWindowTitle(window: ?*GLFWwindow, title: [*c]const u8) void;
pub extern fn glfwSetWindowIcon(window: ?*GLFWwindow, count: c_int, images: [*c]const GLFWimage) void;
pub extern fn glfwGetWindowPos(window: ?*GLFWwindow, xpos: [*c]c_int, ypos: [*c]c_int) void;
pub extern fn glfwSetWindowPos(window: ?*GLFWwindow, xpos: c_int, ypos: c_int) void;
pub extern fn glfwGetWindowSize(window: ?*GLFWwindow, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn glfwSetWindowSizeLimits(window: ?*GLFWwindow, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void;
pub extern fn glfwSetWindowAspectRatio(window: ?*GLFWwindow, numer: c_int, denom: c_int) void;
pub extern fn glfwSetWindowSize(window: ?*GLFWwindow, width: c_int, height: c_int) void;
pub extern fn glfwGetFramebufferSize(window: ?*GLFWwindow, width: [*c]c_int, height: [*c]c_int) void;
pub extern fn glfwGetWindowFrameSize(window: ?*GLFWwindow, left: [*c]c_int, top: [*c]c_int, right: [*c]c_int, bottom: [*c]c_int) void;
pub extern fn glfwGetWindowContentScale(window: ?*GLFWwindow, xscale: [*c]f32, yscale: [*c]f32) void;
pub extern fn glfwGetWindowOpacity(window: ?*GLFWwindow) f32;
pub extern fn glfwSetWindowOpacity(window: ?*GLFWwindow, opacity: f32) void;
pub extern fn glfwIconifyWindow(window: ?*GLFWwindow) void;
pub extern fn glfwRestoreWindow(window: ?*GLFWwindow) void;
pub extern fn glfwMaximizeWindow(window: ?*GLFWwindow) void;
pub extern fn glfwShowWindow(window: ?*GLFWwindow) void;
pub extern fn glfwHideWindow(window: ?*GLFWwindow) void;
pub extern fn glfwFocusWindow(window: ?*GLFWwindow) void;
pub extern fn glfwRequestWindowAttention(window: ?*GLFWwindow) void;
pub extern fn glfwGetWindowMonitor(window: ?*GLFWwindow) ?*GLFWmonitor;
pub extern fn glfwSetWindowMonitor(window: ?*GLFWwindow, monitor: ?*GLFWmonitor, xpos: c_int, ypos: c_int, width: c_int, height: c_int, refreshRate: c_int) void;
pub extern fn glfwGetWindowAttrib(window: ?*GLFWwindow, attrib: c_int) c_int;
pub extern fn glfwSetWindowAttrib(window: ?*GLFWwindow, attrib: c_int, value: c_int) void;
pub extern fn glfwSetWindowUserPointer(window: ?*GLFWwindow, pointer: ?*c_void) void;
pub extern fn glfwGetWindowUserPointer(window: ?*GLFWwindow) ?*c_void;
pub extern fn glfwSetWindowPosCallback(window: ?*GLFWwindow, callback: GLFWwindowposfun) GLFWwindowposfun;
pub extern fn glfwSetWindowSizeCallback(window: ?*GLFWwindow, callback: GLFWwindowsizefun) GLFWwindowsizefun;
pub extern fn glfwSetWindowCloseCallback(window: ?*GLFWwindow, callback: GLFWwindowclosefun) GLFWwindowclosefun;
pub extern fn glfwSetWindowRefreshCallback(window: ?*GLFWwindow, callback: GLFWwindowrefreshfun) GLFWwindowrefreshfun;
pub extern fn glfwSetWindowFocusCallback(window: ?*GLFWwindow, callback: GLFWwindowfocusfun) GLFWwindowfocusfun;
pub extern fn glfwSetWindowIconifyCallback(window: ?*GLFWwindow, callback: GLFWwindowiconifyfun) GLFWwindowiconifyfun;
pub extern fn glfwSetWindowMaximizeCallback(window: ?*GLFWwindow, callback: GLFWwindowmaximizefun) GLFWwindowmaximizefun;
pub extern fn glfwSetFramebufferSizeCallback(window: ?*GLFWwindow, callback: GLFWframebuffersizefun) GLFWframebuffersizefun;
pub extern fn glfwSetWindowContentScaleCallback(window: ?*GLFWwindow, callback: GLFWwindowcontentscalefun) GLFWwindowcontentscalefun;
pub extern fn glfwPollEvents() void;
pub extern fn glfwWaitEvents() void;
pub extern fn glfwWaitEventsTimeout(timeout: f64) void;
pub extern fn glfwPostEmptyEvent() void;
pub extern fn glfwGetInputMode(window: ?*GLFWwindow, mode: c_int) c_int;
pub extern fn glfwSetInputMode(window: ?*GLFWwindow, mode: c_int, value: c_int) void;
pub extern fn glfwRawMouseMotionSupported() c_int;
pub extern fn glfwGetKeyName(key: c_int, scancode: c_int) [*c]const u8;
pub extern fn glfwGetKeyScancode(key: c_int) c_int;
pub extern fn glfwGetKey(window: ?*GLFWwindow, key: c_int) c_int;
pub extern fn glfwGetMouseButton(window: ?*GLFWwindow, button: c_int) c_int;
pub extern fn glfwGetCursorPos(window: ?*GLFWwindow, xpos: [*c]f64, ypos: [*c]f64) void;
pub extern fn glfwSetCursorPos(window: ?*GLFWwindow, xpos: f64, ypos: f64) void;
pub extern fn glfwCreateCursor(image: [*c]const GLFWimage, xhot: c_int, yhot: c_int) ?*GLFWcursor;
pub extern fn glfwCreateStandardCursor(shape: c_int) ?*GLFWcursor;
pub extern fn glfwDestroyCursor(cursor: ?*GLFWcursor) void;
pub extern fn glfwSetCursor(window: ?*GLFWwindow, cursor: ?*GLFWcursor) void;
pub extern fn glfwSetKeyCallback(window: ?*GLFWwindow, callback: GLFWkeyfun) GLFWkeyfun;
pub extern fn glfwSetCharCallback(window: ?*GLFWwindow, callback: GLFWcharfun) GLFWcharfun;
pub extern fn glfwSetCharModsCallback(window: ?*GLFWwindow, callback: GLFWcharmodsfun) GLFWcharmodsfun;
pub extern fn glfwSetMouseButtonCallback(window: ?*GLFWwindow, callback: GLFWmousebuttonfun) GLFWmousebuttonfun;
pub extern fn glfwSetCursorPosCallback(window: ?*GLFWwindow, callback: GLFWcursorposfun) GLFWcursorposfun;
pub extern fn glfwSetCursorEnterCallback(window: ?*GLFWwindow, callback: GLFWcursorenterfun) GLFWcursorenterfun;
pub extern fn glfwSetScrollCallback(window: ?*GLFWwindow, callback: GLFWscrollfun) GLFWscrollfun;
pub extern fn glfwSetDropCallback(window: ?*GLFWwindow, callback: GLFWdropfun) GLFWdropfun;
pub extern fn glfwJoystickPresent(jid: c_int) c_int;
pub extern fn glfwGetJoystickAxes(jid: c_int, count: [*c]c_int) [*c]const f32;
pub extern fn glfwGetJoystickButtons(jid: c_int, count: [*c]c_int) [*c]const u8;
pub extern fn glfwGetJoystickHats(jid: c_int, count: [*c]c_int) [*c]const u8;
pub extern fn glfwGetJoystickName(jid: c_int) [*c]const u8;
pub extern fn glfwGetJoystickGUID(jid: c_int) [*c]const u8;
pub extern fn glfwSetJoystickUserPointer(jid: c_int, pointer: ?*c_void) void;
pub extern fn glfwGetJoystickUserPointer(jid: c_int) ?*c_void;
pub extern fn glfwJoystickIsGamepad(jid: c_int) c_int;
pub extern fn glfwSetJoystickCallback(callback: GLFWjoystickfun) GLFWjoystickfun;
pub extern fn glfwUpdateGamepadMappings(string: [*c]const u8) c_int;
pub extern fn glfwGetGamepadName(jid: c_int) [*c]const u8;
pub extern fn glfwGetGamepadState(jid: c_int, state: [*c]GLFWgamepadstate) c_int;
pub extern fn glfwSetClipboardString(window: ?*GLFWwindow, string: [*c]const u8) void;
pub extern fn glfwGetClipboardString(window: ?*GLFWwindow) [*c]const u8;
pub extern fn glfwGetTime() f64;
pub extern fn glfwSetTime(time: f64) void;
pub extern fn glfwGetTimerValue() u64;
pub extern fn glfwGetTimerFrequency() u64;
pub extern fn glfwMakeContextCurrent(window: ?*GLFWwindow) void;
pub extern fn glfwGetCurrentContext() ?*GLFWwindow;
pub extern fn glfwSwapBuffers(window: ?*GLFWwindow) void;
pub extern fn glfwSwapInterval(interval: c_int) void;
pub extern fn glfwExtensionSupported(extension: [*c]const u8) c_int;
pub extern fn glfwGetProcAddress(procname: [*c]const u8) GLFWglproc;
pub extern fn glfwVulkanSupported() c_int;
pub extern fn glfwGetRequiredInstanceExtensions(count: [*c]u32) [*c][*c]const u8;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):56:9
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):60:9
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):67:9
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):71:9
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):75:9
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):90:9
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):154:9
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):182:9
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):220:9
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):224:9
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):260:9
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):264:9
pub const _SAL1_Source_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:219:9
pub const _SAL1_1_Source_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:220:9
pub const _SAL1_2_Source_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:221:9
pub const _SAL2_Source_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:222:9
pub const _SAL_L_Source_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:226:9
pub const _Reserved_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:292:9
pub const _Const_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:296:9
pub const _In_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:305:9
pub const _In_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:306:9
pub const _In_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:310:9
pub const _In_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:311:9
pub const _In_reads_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:316:9
pub const _In_reads_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:317:9
pub const _In_reads_bytes_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:318:9
pub const _In_reads_bytes_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:319:9
pub const _In_reads_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:320:9
pub const _In_reads_opt_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:321:9
pub const _In_reads_or_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:322:9
pub const _In_reads_or_z_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:323:9
pub const _In_reads_to_ptr_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:328:9
pub const _In_reads_to_ptr_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:329:9
pub const _In_reads_to_ptr_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:330:9
pub const _In_reads_to_ptr_opt_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:331:9
pub const _Out_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:342:9
pub const _Out_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:343:9
pub const _Out_writes_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:345:9
pub const _Out_writes_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:346:9
pub const _Out_writes_bytes_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:347:9
pub const _Out_writes_bytes_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:348:9
pub const _Out_writes_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:349:9
pub const _Out_writes_opt_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:350:9
pub const _Out_writes_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:352:9
pub const _Out_writes_to_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:353:9
pub const _Out_writes_bytes_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:357:9
pub const _Out_writes_bytes_to_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:358:9
pub const _Out_writes_to_ptr_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:362:9
pub const _Out_writes_to_ptr_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:363:9
pub const _Out_writes_to_ptr_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:364:9
pub const _Out_writes_to_ptr_opt_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:365:9
pub const _Inout_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:375:9
pub const _Inout_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:376:9
pub const _Inout_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:380:9
pub const _Inout_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:381:9
pub const _Inout_updates_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:384:9
pub const _Inout_updates_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:385:9
pub const _Inout_updates_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:386:9
pub const _Inout_updates_opt_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:387:9
pub const _Inout_updates_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:389:9
pub const _Inout_updates_to_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:390:9
pub const _Inout_updates_bytes_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:396:9
pub const _Inout_updates_bytes_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:397:9
pub const _Inout_updates_bytes_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:399:9
pub const _Inout_updates_bytes_to_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:400:9
pub const _Outptr_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:424:9
pub const _Outptr_result_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:425:9
pub const _Outptr_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:426:9
pub const _Outptr_opt_result_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:427:9
pub const _Outptr_result_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:431:9
pub const _Outptr_opt_result_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:432:9
pub const _Outptr_result_maybenull_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:433:9
pub const _Outptr_opt_result_maybenull_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:434:9
pub const _Outptr_result_nullonfailure_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:438:9
pub const _Outptr_opt_result_nullonfailure_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:439:9
pub const _COM_Outptr_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:446:9
pub const _COM_Outptr_result_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:447:9
pub const _COM_Outptr_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:448:9
pub const _COM_Outptr_opt_result_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:449:9
pub const _Outref_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:487:9
pub const _Outref_result_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:488:9
pub const _Outref_result_buffer_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:492:9
pub const _Outref_result_bytebuffer_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:493:9
pub const _Outref_result_buffer_to_maybenull_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:499:9
pub const _Outref_result_bytebuffer_to_maybenull_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:500:9
pub const _Outref_result_nullonfailure_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:506:9
pub const _Result_nullonfailure_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:509:9
pub const _Result_zeroonfailure_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:510:9
pub const _Ret_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:521:9
pub const _Ret_maybenull_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:522:9
pub const _Ret_notnull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:525:9
pub const _Ret_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:526:9
pub const _Ret_null_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:527:9
pub const _Ret_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:531:9
pub const _Ret_writes_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:534:9
pub const _Ret_writes_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:535:9
pub const _Ret_writes_bytes_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:536:9
pub const _Ret_writes_maybenull_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:537:9
pub const _Ret_writes_maybenull_z_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:538:9
pub const _Ret_writes_bytes_maybenull_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:539:9
pub const _Ret_writes_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:542:9
pub const _Ret_writes_bytes_to_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:543:9
pub const _Ret_writes_to_maybenull_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:544:9
pub const _Ret_writes_bytes_to_maybenull_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:545:9
pub const _Points_to_data_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:549:9
pub const _Literal_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:550:9
pub const _Notliteral_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:551:9
pub const _Check_return_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:554:9
pub const _Must_inspect_result_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:555:9
pub const _Printf_format_string_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:558:9
pub const _Scanf_format_string_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:559:9
pub const _Scanf_s_format_string_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:560:9
pub const _Pre_equal_to_ = @compileError("unable to translate C expr: unexpected token .EqualEqual"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:574:9
pub const _Post_equal_to_ = @compileError("unable to translate C expr: unexpected token .EqualEqual"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:575:9
pub const _Unchanged_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:579:9
pub const _Field_size_part_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:592:9
pub const _Field_size_part_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:593:9
pub const _Field_size_bytes_part_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:599:9
pub const _Field_size_bytes_part_opt_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:600:9
pub const _Field_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:604:9
pub const _Null_terminated_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:637:9
pub const _NullNull_terminated_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:638:9
pub const _Pre_readable_size_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:641:9
pub const _Pre_readable_byte_size_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:643:9
pub const _Post_readable_size_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:646:9
pub const _Post_readable_byte_size_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:648:9
pub const _Null_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:654:9
pub const _Notnull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:655:9
pub const _Maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:656:9
pub const _Pre_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:665:9
pub const _Pre_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:668:9
pub const _Pre_opt_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:669:9
pub const _Pre_invalid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:671:9
pub const _Pre_unknown_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:674:9
pub const _Pre_notnull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:677:9
pub const _Pre_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:678:9
pub const _Pre_null_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:679:9
pub const _Post_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:688:9
pub const _Post_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:691:9
pub const _Post_invalid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:692:9
pub const _Post_ptr_invalid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:695:9
pub const _Post_notnull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:698:9
pub const _Post_null_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:701:9
pub const _Post_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:703:9
pub const _Prepost_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:705:9
pub const _In_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:807:9
pub const _In_opt_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:808:9
pub const _In_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:809:9
pub const _In_opt_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:810:9
pub const _In_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:813:9
pub const _In_opt_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:814:9
pub const _In_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:815:9
pub const _In_opt_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:816:9
pub const _In_z_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:822:9
pub const _In_opt_z_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:823:9
pub const _In_z_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:824:9
pub const _In_opt_z_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:825:9
pub const _In_z_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:828:9
pub const _In_opt_z_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:829:9
pub const _In_z_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:830:9
pub const _In_opt_z_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:831:9
pub const _In_ptrdiff_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:835:9
pub const _In_opt_ptrdiff_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:836:9
pub const _In_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:840:9
pub const _In_opt_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:841:9
pub const _In_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:842:9
pub const _In_opt_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:843:9
pub const _Out_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:849:9
pub const _Out_opt_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:850:9
pub const _Out_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:851:9
pub const _Out_opt_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:852:9
pub const _Out_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:855:9
pub const _Out_opt_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:856:9
pub const _Out_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:857:9
pub const _Out_opt_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:858:9
pub const _Out_cap_m_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:861:9
pub const _Out_opt_cap_m_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:862:9
pub const _Out_z_cap_m_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:863:9
pub const _Out_opt_z_cap_m_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:864:9
pub const _Out_ptrdiff_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:868:9
pub const _Out_opt_ptrdiff_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:869:9
pub const _Out_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:872:9
pub const _Out_opt_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:873:9
pub const _Out_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:874:9
pub const _Out_opt_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:875:9
pub const _Out_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:880:9
pub const _Out_opt_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:881:9
pub const _Out_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:882:9
pub const _Out_opt_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:883:9
pub const _Out_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:886:9
pub const _Out_opt_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:887:9
pub const _Out_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:888:9
pub const _Out_opt_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:889:9
pub const _Out_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:892:9
pub const _Out_opt_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:893:9
pub const _Out_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:894:9
pub const _Out_opt_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:895:9
pub const _Out_cap_post_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:899:9
pub const _Out_opt_cap_post_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:900:9
pub const _Out_bytecap_post_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:901:9
pub const _Out_opt_bytecap_post_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:902:9
pub const _Out_z_cap_post_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:906:9
pub const _Out_opt_z_cap_post_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:907:9
pub const _Out_z_bytecap_post_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:908:9
pub const _Out_opt_z_bytecap_post_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:909:9
pub const _Out_capcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:912:9
pub const _Out_opt_capcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:913:9
pub const _Out_bytecapcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:914:9
pub const _Out_opt_bytecapcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:915:9
pub const _Out_capcount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:917:9
pub const _Out_opt_capcount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:918:9
pub const _Out_bytecapcount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:919:9
pub const _Out_opt_bytecapcount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:920:9
pub const _Out_z_capcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:923:9
pub const _Out_opt_z_capcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:924:9
pub const _Out_z_bytecapcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:925:9
pub const _Out_opt_z_bytecapcount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:926:9
pub const _Inout_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:962:9
pub const _Inout_opt_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:963:9
pub const _Inout_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:964:9
pub const _Inout_opt_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:965:9
pub const _Inout_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:967:9
pub const _Inout_opt_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:968:9
pub const _Inout_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:969:9
pub const _Inout_opt_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:970:9
pub const _Inout_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:972:9
pub const _Inout_opt_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:973:9
pub const _Inout_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:974:9
pub const _Inout_opt_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:975:9
pub const _Inout_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:979:9
pub const _Inout_opt_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:980:9
pub const _Inout_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:981:9
pub const _Inout_opt_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:982:9
pub const _Inout_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:984:9
pub const _Inout_opt_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:985:9
pub const _Inout_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:986:9
pub const _Inout_opt_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:987:9
pub const _Inout_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:989:9
pub const _Inout_opt_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:990:9
pub const _Inout_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:991:9
pub const _Inout_opt_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:992:9
pub const _Ret_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:996:9
pub const _Ret_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:997:9
pub const _In_bound_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1000:9
pub const _Out_bound_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1001:9
pub const _Ret_bound_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1002:9
pub const _Deref_in_bound_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1003:9
pub const _Deref_out_bound_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1004:9
pub const _Deref_inout_bound_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1005:9
pub const _Deref_ret_bound_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1006:9
pub const _Deref_out_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1009:9
pub const _Deref_out_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1010:9
pub const _Deref_opt_out_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1011:9
pub const _Deref_opt_out_opt_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1012:9
pub const _Deref_out_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1015:9
pub const _Deref_out_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1016:9
pub const _Deref_opt_out_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1017:9
pub const _Deref_opt_out_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1018:9
pub const _Deref_pre_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1026:9
pub const _Deref_pre_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1027:9
pub const _Deref_pre_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1031:9
pub const _Deref_pre_opt_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1032:9
pub const _Deref_pre_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1033:9
pub const _Deref_pre_opt_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1034:9
pub const _Deref_pre_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1037:9
pub const _Deref_pre_opt_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1038:9
pub const _Deref_pre_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1039:9
pub const _Deref_pre_opt_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1040:9
pub const _Deref_pre_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1043:9
pub const _Deref_pre_opt_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1044:9
pub const _Deref_pre_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1045:9
pub const _Deref_pre_opt_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1046:9
pub const _Deref_pre_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1049:9
pub const _Deref_pre_opt_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1050:9
pub const _Deref_pre_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1051:9
pub const _Deref_pre_opt_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1052:9
pub const _Deref_pre_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1054:9
pub const _Deref_pre_opt_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1055:9
pub const _Deref_pre_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1056:9
pub const _Deref_pre_opt_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1057:9
pub const _Deref_pre_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1059:9
pub const _Deref_pre_opt_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1060:9
pub const _Deref_pre_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1061:9
pub const _Deref_pre_opt_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1062:9
pub const _Deref_pre_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1065:9
pub const _Deref_pre_opt_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1066:9
pub const _Deref_pre_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1067:9
pub const _Deref_pre_opt_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1068:9
pub const _Deref_pre_valid_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1070:9
pub const _Deref_pre_opt_valid_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1071:9
pub const _Deref_pre_valid_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1072:9
pub const _Deref_pre_opt_valid_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1073:9
pub const _Deref_pre_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1075:9
pub const _Deref_pre_opt_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1076:9
pub const _Deref_pre_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1077:9
pub const _Deref_pre_opt_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1078:9
pub const _Deref_pre_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1082:9
pub const _Deref_pre_opt_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1083:9
pub const _Deref_pre_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1084:9
pub const _Deref_pre_opt_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1085:9
pub const _Deref_pre_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1088:9
pub const _Deref_pre_opt_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1089:9
pub const _Deref_pre_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1090:9
pub const _Deref_pre_opt_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1091:9
pub const _Deref_pre_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1094:9
pub const _Deref_pre_opt_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1095:9
pub const _Deref_pre_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1096:9
pub const _Deref_pre_opt_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1097:9
pub const _Deref_pre_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1100:9
pub const _Deref_pre_opt_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1101:9
pub const _Deref_pre_invalid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1102:9
pub const _Deref_pre_notnull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1104:9
pub const _Deref_pre_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1105:9
pub const _Deref_pre_null_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1106:9
pub const _Deref_pre_readonly_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1109:9
pub const _Deref_pre_writeonly_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1110:9
pub const _Deref_post_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1118:9
pub const _Deref_post_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1119:9
pub const _Deref_post_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1123:9
pub const _Deref_post_opt_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1124:9
pub const _Deref_post_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1125:9
pub const _Deref_post_opt_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1126:9
pub const _Deref_post_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1129:9
pub const _Deref_post_opt_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1130:9
pub const _Deref_post_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1131:9
pub const _Deref_post_opt_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1132:9
pub const _Deref_post_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1135:9
pub const _Deref_post_opt_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1136:9
pub const _Deref_post_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1137:9
pub const _Deref_post_opt_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1138:9
pub const _Deref_post_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1141:9
pub const _Deref_post_opt_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1142:9
pub const _Deref_post_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1143:9
pub const _Deref_post_opt_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1144:9
pub const _Deref_post_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1146:9
pub const _Deref_post_opt_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1147:9
pub const _Deref_post_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1148:9
pub const _Deref_post_opt_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1149:9
pub const _Deref_post_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1151:9
pub const _Deref_post_opt_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1152:9
pub const _Deref_post_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1153:9
pub const _Deref_post_opt_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1154:9
pub const _Deref_post_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1157:9
pub const _Deref_post_opt_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1158:9
pub const _Deref_post_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1159:9
pub const _Deref_post_opt_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1160:9
pub const _Deref_post_valid_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1162:9
pub const _Deref_post_opt_valid_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1163:9
pub const _Deref_post_valid_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1164:9
pub const _Deref_post_opt_valid_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1165:9
pub const _Deref_post_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1167:9
pub const _Deref_post_opt_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1168:9
pub const _Deref_post_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1169:9
pub const _Deref_post_opt_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1170:9
pub const _Deref_post_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1174:9
pub const _Deref_post_opt_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1175:9
pub const _Deref_post_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1176:9
pub const _Deref_post_opt_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1177:9
pub const _Deref_post_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1180:9
pub const _Deref_post_opt_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1181:9
pub const _Deref_post_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1182:9
pub const _Deref_post_opt_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1183:9
pub const _Deref_post_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1186:9
pub const _Deref_post_opt_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1187:9
pub const _Deref_post_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1188:9
pub const _Deref_post_opt_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1189:9
pub const _Deref_post_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1192:9
pub const _Deref_post_opt_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1193:9
pub const _Deref_post_notnull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1195:9
pub const _Deref_post_maybenull_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1196:9
pub const _Deref_post_null_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1197:9
pub const _Deref_ret_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1203:9
pub const _Deref_ret_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1204:9
pub const _Deref2_pre_readonly_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1209:9
pub const _Ret_opt_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1216:9
pub const _Ret_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1217:9
pub const _Ret_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1221:9
pub const _Ret_opt_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1222:9
pub const _Ret_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1223:9
pub const _Ret_opt_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1224:9
pub const _Ret_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1227:9
pub const _Ret_opt_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1228:9
pub const _Ret_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1229:9
pub const _Ret_opt_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1230:9
pub const _Ret_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1233:9
pub const _Ret_opt_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1234:9
pub const _Ret_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1235:9
pub const _Ret_opt_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1236:9
pub const _Ret_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1239:9
pub const _Ret_opt_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1240:9
pub const _Ret_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1241:9
pub const _Ret_opt_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1242:9
pub const _Ret_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1246:9
pub const _Ret_opt_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1247:9
pub const _Ret_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1248:9
pub const _Ret_opt_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1249:9
pub const _Ret_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1252:9
pub const _Ret_opt_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1253:9
pub const _Ret_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1254:9
pub const _Ret_opt_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1255:9
pub const _Ret_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1258:9
pub const _Ret_opt_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1259:9
pub const _Ret_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1260:9
pub const _Ret_opt_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1261:9
pub const _Ret_z_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1264:9
pub const _Ret_opt_z_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1265:9
pub const _Ret_z_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1266:9
pub const _Ret_opt_z_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1267:9
pub const _Pre_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1271:9
pub const _Pre_readonly_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1274:9
pub const _Pre_writeonly_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1275:9
pub const _Pre_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1279:9
pub const _Pre_opt_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1280:9
pub const _Pre_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1281:9
pub const _Pre_opt_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1282:9
pub const _Pre_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1285:9
pub const _Pre_opt_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1286:9
pub const _Pre_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1287:9
pub const _Pre_opt_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1288:9
pub const _Pre_cap_c_one_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1289:9
pub const _Pre_opt_cap_c_one_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1290:9
pub const _Pre_cap_m_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1293:9
pub const _Pre_opt_cap_m_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1294:9
pub const _Pre_cap_for_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1298:9
pub const _Pre_opt_cap_for_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1299:9
pub const _Pre_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1302:9
pub const _Pre_opt_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1303:9
pub const _Pre_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1304:9
pub const _Pre_opt_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1305:9
pub const _Pre_ptrdiff_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1308:9
pub const _Pre_opt_ptrdiff_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1309:9
pub const _Pre_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1312:9
pub const _Pre_opt_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1313:9
pub const _Pre_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1314:9
pub const _Pre_opt_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1315:9
pub const _Pre_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1317:9
pub const _Pre_opt_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1318:9
pub const _Pre_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1319:9
pub const _Pre_opt_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1320:9
pub const _Pre_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1322:9
pub const _Pre_opt_z_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1323:9
pub const _Pre_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1324:9
pub const _Pre_opt_z_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1325:9
pub const _Pre_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1328:9
pub const _Pre_opt_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1329:9
pub const _Pre_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1330:9
pub const _Pre_opt_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1331:9
pub const _Pre_valid_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1333:9
pub const _Pre_opt_valid_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1334:9
pub const _Pre_valid_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1335:9
pub const _Pre_opt_valid_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1336:9
pub const _Pre_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1338:9
pub const _Pre_opt_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1339:9
pub const _Pre_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1340:9
pub const _Pre_opt_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1341:9
pub const _Pre_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1345:9
pub const _Pre_opt_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1346:9
pub const _Pre_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1347:9
pub const _Pre_opt_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1348:9
pub const _Pre_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1351:9
pub const _Pre_opt_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1352:9
pub const _Pre_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1353:9
pub const _Pre_opt_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1354:9
pub const _Pre_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1357:9
pub const _Pre_opt_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1358:9
pub const _Pre_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1359:9
pub const _Pre_opt_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1360:9
pub const _Pre_ptrdiff_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1363:9
pub const _Pre_opt_ptrdiff_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1364:9
pub const _Post_maybez_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1369:9
pub const _Post_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1376:9
pub const _Post_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1377:9
pub const _Post_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1378:9
pub const _Post_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1379:9
pub const _Post_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1380:9
pub const _Post_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1381:9
pub const _Post_z_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1384:9
pub const _Post_z_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1385:9
pub const _Post_z_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1386:9
pub const _Post_z_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1387:9
pub const _Post_z_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1388:9
pub const _Post_z_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1389:9
pub const _Prepost_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1396:9
pub const _Prepost_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1398:9
pub const _Prepost_opt_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1399:9
pub const _Prepost_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1400:9
pub const _Prepost_opt_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1401:9
pub const _Prepost_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1402:9
pub const _Prepost_opt_count_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1403:9
pub const _Prepost_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1404:9
pub const _Prepost_opt_bytecount_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1405:9
pub const _Prepost_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1406:9
pub const _Prepost_opt_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1407:9
pub const _Prepost_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1408:9
pub const _Prepost_opt_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1409:9
pub const _Prepost_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1411:9
pub const _Prepost_opt_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1412:9
pub const _Deref_prepost_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1420:9
pub const _Deref_prepost_opt_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1421:9
pub const _Deref_prepost_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1423:9
pub const _Deref_prepost_opt_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1424:9
pub const _Deref_prepost_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1425:9
pub const _Deref_prepost_opt_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1426:9
pub const _Deref_prepost_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1428:9
pub const _Deref_prepost_opt_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1429:9
pub const _Deref_prepost_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1430:9
pub const _Deref_prepost_opt_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1431:9
pub const _Deref_prepost_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1433:9
pub const _Deref_prepost_opt_z_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1434:9
pub const _Deref_prepost_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1435:9
pub const _Deref_prepost_opt_z_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1436:9
pub const _Deref_prepost_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1438:9
pub const _Deref_prepost_opt_valid_cap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1439:9
pub const _Deref_prepost_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1440:9
pub const _Deref_prepost_opt_valid_bytecap_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1441:9
pub const _Deref_prepost_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1443:9
pub const _Deref_prepost_opt_valid_cap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1444:9
pub const _Deref_prepost_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1445:9
pub const _Deref_prepost_opt_valid_bytecap_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1446:9
pub const _Deref_prepost_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1448:9
pub const _Deref_prepost_opt_count_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1449:9
pub const _Deref_prepost_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1450:9
pub const _Deref_prepost_opt_bytecount_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1451:9
pub const _Deref_prepost_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1453:9
pub const _Deref_prepost_opt_count_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1454:9
pub const _Deref_prepost_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1455:9
pub const _Deref_prepost_opt_bytecount_x_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1456:9
pub const _Deref_prepost_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1458:9
pub const _Deref_prepost_opt_valid_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1459:9
pub const _Deref_out_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1466:9
pub const _Deref_inout_z_cap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1467:9
pub const _Deref_out_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1468:9
pub const _Deref_inout_z_bytecap_c_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1469:9
pub const _Deref_inout_z_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1470:9
pub const _SA_annotes0 = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1614:9
pub const _SA_annotes1 = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1615:9
pub const _SA_annotes2 = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1616:9
pub const _SA_annotes3 = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1617:9
pub const __ANNOTATION = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1619:9
pub const __PRIMOP = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1620:9
pub const __QUALIFIER = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:1621:9
pub const _At_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2051:9
pub const _When_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2052:9
pub const _Group_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2053:9
pub const _GrouP_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2054:9
pub const _At_buffer_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2055:9
pub const _Success_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2069:9
pub const _On_failure_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2070:9
pub const _Always_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2071:9
pub const _Range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2084:9
pub const _In_range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2085:9
pub const _Out_range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2086:9
pub const _Ret_range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2087:9
pub const _Deref_in_range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2088:9
pub const _Deref_out_range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2089:9
pub const _Deref_ret_range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2090:9
pub const _Satisfies_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2092:9
pub const _Pre_satisfies_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2093:9
pub const _Post_satisfies_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2094:9
pub const _Field_range_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2104:9
pub const _Pre1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2107:9
pub const _Pre2_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2108:9
pub const _Pre3_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2109:9
pub const _Post1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2112:9
pub const _Post2_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2113:9
pub const _Post3_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2114:9
pub const _Ret1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2116:9
pub const _Ret2_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2117:9
pub const _Ret3_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2118:9
pub const _Deref_pre1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2120:9
pub const _Deref_pre2_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2121:9
pub const _Deref_pre3_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2122:9
pub const _Deref_post1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2124:9
pub const _Deref_post2_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2125:9
pub const _Deref_post3_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2126:9
pub const _Deref_ret1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2128:9
pub const _Deref_ret2_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2129:9
pub const _Deref_ret3_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2130:9
pub const _Deref2_pre1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2132:9
pub const _Deref2_post1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2133:9
pub const _Deref2_ret1_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2134:9
pub const _Readable_bytes_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2136:9
pub const _Readable_elements_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2137:9
pub const _Writable_bytes_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2138:9
pub const _Writable_elements_impl_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2139:9
pub const __inner_typefix = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2145:9
pub const __readableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2604:13
pub const __elem_readableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2605:13
pub const __byte_readableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2606:13
pub const __writableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2607:13
pub const __elem_writableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2608:13
pub const __byte_writableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2609:13
pub const __precond = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2613:13
pub const __postcond = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2614:13
pub const __inner_blocksOn = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2618:13
pub const __inner_control_entrypoint = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2622:13
pub const __inner_data_entrypoint = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2623:13
pub const __inexpressible_readableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2630:13
pub const __inexpressible_writableTo = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2631:13
pub const __in = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2647:9
pub const __in_z = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2650:9
pub const __in_bcount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2652:9
pub const __in_nz = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2653:9
pub const __out = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2656:9
pub const __out_z = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2663:9
pub const __out_z_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2664:9
pub const __out_ecount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2665:9
pub const __out_bcount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2666:9
pub const __out_ecount_part_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2667:9
pub const __out_bcount_part_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2668:9
pub const __out_ecount_full_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2669:9
pub const __out_bcount_full_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2670:9
pub const __out_nz = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2671:9
pub const __out_nz_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2672:9
pub const __out_ecount_nz = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2673:9
pub const __out_bcount_nz = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2674:9
pub const __inout = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2675:9
pub const __inout_z = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2682:9
pub const __inout_bcount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2684:9
pub const __inout_nz = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2685:9
pub const __ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2688:9
pub const __bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2689:9
pub const __in_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2690:9
pub const __in_z_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2693:9
pub const __in_ecount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2694:9
pub const __in_bcount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2695:9
pub const __in_nz_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2696:9
pub const __out_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2699:9
pub const __out_ecount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2702:9
pub const __out_bcount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2703:9
pub const __out_ecount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2704:9
pub const __out_bcount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2705:9
pub const __out_ecount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2706:9
pub const __out_bcount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2707:9
pub const __out_ecount_part_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2708:9
pub const __out_bcount_part_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2709:9
pub const __out_ecount_full_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2710:9
pub const __out_bcount_full_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2711:9
pub const __out_ecount_nz_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2712:9
pub const __out_bcount_nz_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2713:9
pub const __inout_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2714:9
pub const __inout_ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2715:9
pub const __inout_bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2716:9
pub const __inout_ecount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2717:9
pub const __inout_bcount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2718:9
pub const __inout_ecount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2719:9
pub const __inout_bcount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2720:9
pub const __inout_z_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2721:9
pub const __inout_ecount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2722:9
pub const __inout_nz_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2725:9
pub const __deref_ecount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2728:9
pub const __deref_bcount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2729:9
pub const __deref_out = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2730:9
pub const __deref_out_z = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2737:9
pub const __deref_out_ecount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2738:9
pub const __deref_out_bcount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2739:9
pub const __deref_out_nz = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2740:9
pub const __deref_inout = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2743:9
pub const __deref_inout_z = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2744:9
pub const __deref_inout_ecount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2745:9
pub const __deref_inout_bcount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2746:9
pub const __deref_inout_ecount_part = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2747:9
pub const __deref_inout_bcount_part = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2748:9
pub const __deref_inout_ecount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2751:9
pub const __deref_inout_bcount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2752:9
pub const __deref_inout_nz = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2753:9
pub const __deref_ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2756:9
pub const __deref_bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2757:9
pub const __deref_out_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2758:9
pub const __deref_out_ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2759:9
pub const __deref_out_bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2760:9
pub const __deref_out_ecount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2761:9
pub const __deref_out_bcount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2762:9
pub const __deref_out_ecount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2763:9
pub const __deref_out_bcount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2764:9
pub const __deref_out_z_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2765:9
pub const __deref_out_ecount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2766:9
pub const __deref_out_bcount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2767:9
pub const __deref_out_nz_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2768:9
pub const __deref_inout_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2771:9
pub const __deref_inout_ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2772:9
pub const __deref_inout_bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2773:9
pub const __deref_inout_ecount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2774:9
pub const __deref_inout_bcount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2775:9
pub const __deref_inout_ecount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2776:9
pub const __deref_inout_bcount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2777:9
pub const __deref_inout_z_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2778:9
pub const __deref_inout_ecount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2779:9
pub const __deref_inout_bcount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2780:9
pub const __deref_inout_nz_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2781:9
pub const __deref_opt_ecount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2784:9
pub const __deref_opt_bcount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2785:9
pub const __deref_opt_out = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2786:9
pub const __deref_opt_out_z = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2787:9
pub const __deref_opt_out_ecount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2788:9
pub const __deref_opt_out_bcount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2789:9
pub const __deref_opt_out_ecount_part = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2790:9
pub const __deref_opt_out_bcount_part = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2791:9
pub const __deref_opt_out_ecount_full = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2792:9
pub const __deref_opt_out_bcount_full = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2793:9
pub const __deref_opt_inout = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2794:9
pub const __deref_opt_inout_ecount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2795:9
pub const __deref_opt_inout_bcount = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2796:9
pub const __deref_opt_inout_ecount_part = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2797:9
pub const __deref_opt_inout_bcount_part = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2798:9
pub const __deref_opt_inout_ecount_full = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2799:9
pub const __deref_opt_inout_bcount_full = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2800:9
pub const __deref_opt_inout_z = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2801:9
pub const __deref_opt_inout_ecount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2802:9
pub const __deref_opt_inout_bcount_z = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2803:9
pub const __deref_opt_inout_nz = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2804:9
pub const __deref_opt_ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2807:9
pub const __deref_opt_bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2808:9
pub const __deref_opt_out_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2809:9
pub const __deref_opt_out_ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2810:9
pub const __deref_opt_out_bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2811:9
pub const __deref_opt_out_ecount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2812:9
pub const __deref_opt_out_bcount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2813:9
pub const __deref_opt_out_ecount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2814:9
pub const __deref_opt_out_bcount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2815:9
pub const __deref_opt_out_z_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2816:9
pub const __deref_opt_out_ecount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2817:9
pub const __deref_opt_out_bcount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2818:9
pub const __deref_opt_out_nz_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2819:9
pub const __deref_opt_inout_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2822:9
pub const __deref_opt_inout_ecount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2823:9
pub const __deref_opt_inout_bcount_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2824:9
pub const __deref_opt_inout_ecount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2825:9
pub const __deref_opt_inout_bcount_part_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2826:9
pub const __deref_opt_inout_ecount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2827:9
pub const __deref_opt_inout_bcount_full_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2828:9
pub const __deref_opt_inout_z_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2829:9
pub const __deref_opt_inout_ecount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2830:9
pub const __deref_opt_inout_bcount_z_opt = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2831:9
pub const __deref_opt_inout_nz_opt = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2832:9
pub const __nullterminated = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2847:9
pub const __nullnullterminated = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2848:9
pub const __reserved = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2849:9
pub const __checkReturn = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2850:9
pub const __format_string = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2854:9
pub const __analysis_assume = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2892:9
pub const _Analysis_assume_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2900:9
pub const _Analysis_noreturn_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2904:9
pub const _Analysis_assume_nullterminated_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2913:9
pub const ___MKID = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2923:9
pub const _Analysis_mode_impl_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2929:9
pub const _Analysis_mode_ = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2937:9
pub const _In_function_class_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2959:9
pub const _Enum_is_bitflag_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2964:9
pub const _Strict_type_match_ = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\sal.h:2965:9
pub const _Guarded_by_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:297:9
pub const _Write_guarded_by_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:298:9
pub const _Requires_lock_held_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:300:9
pub const _Requires_exclusive_lock_held_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:301:9
pub const _Requires_shared_lock_held_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:302:9
pub const _Requires_lock_not_held_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:303:9
pub const _Acquires_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:305:9
pub const _Acquires_exclusive_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:306:9
pub const _Acquires_shared_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:307:9
pub const _Releases_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:308:9
pub const _Releases_exclusive_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:309:9
pub const _Releases_shared_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:310:9
pub const _Acquires_nonreentrant_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:311:9
pub const _Releases_nonreentrant_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:312:9
pub const _Post_same_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:314:9
pub const _Internal_set_lock_count_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:316:9
pub const _Create_lock_level_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:318:9
pub const _Has_lock_level_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:319:9
pub const _Internal_lock_level_order_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:320:9
pub const _Csalcat1_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:321:9
pub const _Csalcat2_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:322:9
pub const _Lock_level_order_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:323:9
pub const _Analysis_assume_lock_acquired_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:325:9
pub const _Analysis_assume_lock_released_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:326:9
pub const _Analysis_assume_lock_held_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:327:9
pub const _Analysis_assume_lock_not_held_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:328:9
pub const _Analysis_assume_same_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:329:9
pub const _Function_ignore_lock_checking_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:330:9
pub const _Analysis_suppress_lock_checking_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:331:9
pub const _Has_lock_kind_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:339:9
pub const _Detaches_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:346:9
pub const _Moves_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:347:9
pub const _Replaces_lock_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:348:9
pub const _Swaps_locks_ = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:349:9
pub const __guarded_by = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:354:9
pub const __write_guarded_by = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:355:9
pub const __requires_lock_held = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:357:9
pub const __requires_exclusive_lock_held = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:358:9
pub const __requires_shared_lock_held = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:359:9
pub const __requires_lock_not_held = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:360:9
pub const __acquires_lock = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:362:9
pub const __acquires_exclusive_lock = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:363:9
pub const __acquires_shared_lock = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:364:9
pub const __releases_lock = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:365:9
pub const __releases_exclusive_lock = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:366:9
pub const __releases_shared_lock = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:367:9
pub const __has_lock_property = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:369:9
pub const __declare_lock_level = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:370:9
pub const __has_lock_level = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:371:9
pub const __internal_lock_level_order = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:372:9
pub const CSALCAT1 = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:373:9
pub const CSALCAT2 = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:374:9
pub const __lock_level_order = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:375:9
pub const __analysis_assume_lock_acquired = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:377:9
pub const __analysis_assume_lock_released = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:378:9
pub const __function_ignore_lock_checking = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:379:9
pub const __analysis_suppress_lock_checking = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\concurrencysal.h:380:9
pub const _VCRUNTIME_DISABLED_WARNINGS = @compileError("unable to translate C expr: unexpected token .IntegerLiteral"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vadefs.h:44:13
pub const __crt_va_arg = @compileError("unable to translate C expr: unexpected token .RParen"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vadefs.h:158:13
pub const __crt_va_end = @compileError("unable to translate C expr: expected ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vadefs.h:162:13
pub const _CRT_STRINGIZE_ = @compileError("unable to translate C expr: unexpected token .Hash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:110:9
pub const _CRT_WIDE_ = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:113:9
pub const _CRT_CONCATENATE_ = @compileError("unable to translate C expr: unexpected token .HashHash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:116:9
pub const _CRT_UNPARENTHESIZE_ = @compileError("unable to translate C expr: expected ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:119:9
pub const _CRT_UNPARENTHESIZE = @compileError("unable to translate C expr: expected ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:120:9
pub const _VCRT_RESTRICT = @compileError("unable to translate C expr: unexpected token .Keyword_restrict"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:159:9
pub const _CRT_INSECURE_DEPRECATE = @compileError("unable to translate C expr: expected ',' or ')'"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:316:17
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token .Nl"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\vcruntime.h:330:17
pub const INT64_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\stdint.h:126:9
pub const UINT32_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\stdint.h:130:9
pub const UINT64_C = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.28.29333\include\stdint.h:131:9
pub const __llvm__ = 1;
pub const __clang__ = 1;
pub const __clang_major__ = 11;
pub const __clang_minor__ = 0;
pub const __clang_patchlevel__ = 0;
pub const __clang_version__ = "11.0.0 ";
pub const __ATOMIC_RELAXED = 0;
pub const __ATOMIC_CONSUME = 1;
pub const __ATOMIC_ACQUIRE = 2;
pub const __ATOMIC_RELEASE = 3;
pub const __ATOMIC_ACQ_REL = 4;
pub const __ATOMIC_SEQ_CST = 5;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __VERSION__ = "Clang 11.0.0";
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __OPTIMIZE__ = 1;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = 1;
pub const __CHAR_BIT__ = 8;
pub const __SCHAR_MAX__ = 127;
pub const __SHRT_MAX__ = 32767;
pub const __INT_MAX__ = 2147483647;
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = 65535;
pub const __WINT_MAX__ = 65535;
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZEOF_DOUBLE__ = 8;
pub const __SIZEOF_FLOAT__ = 4;
pub const __SIZEOF_INT__ = 4;
pub const __SIZEOF_LONG__ = 4;
pub const __SIZEOF_LONG_DOUBLE__ = 8;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZEOF_SHORT__ = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __SIZEOF_WCHAR_T__ = 2;
pub const __SIZEOF_WINT_T__ = 2;
pub const __SIZEOF_INT128__ = 16;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __INTMAX_C_SUFFIX__ = LL;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __UINTMAX_C_SUFFIX__ = ULL;
pub const __INTMAX_WIDTH__ = 64;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __INTPTR_WIDTH__ = 64;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __SIZE_WIDTH__ = 64;
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WCHAR_WIDTH__ = 16;
pub const __WINT_TYPE__ = c_ushort;
pub const __WINT_WIDTH__ = 16;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = 64;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __UINTPTR_WIDTH__ = 64;
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = 1;
pub const __FLT_DIG__ = 6;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __FLT_MANT_DIG__ = 24;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __FLT_MAX_EXP__ = 128;
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -37;
pub const __FLT_MIN_EXP__ = -125;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = 1;
pub const __DBL_DIG__ = 15;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __DBL_MAX_EXP__ = 1024;
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __DBL_MIN_EXP__ = -1021;
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = 1;
pub const __LDBL_DIG__ = 15;
pub const __LDBL_DECIMAL_DIG__ = 17;
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __LDBL_MANT_DIG__ = 53;
pub const __LDBL_MAX_10_EXP__ = 308;
pub const __LDBL_MAX_EXP__ = 1024;
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -307;
pub const __LDBL_MIN_EXP__ = -1021;
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = 64;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const __WCHAR_UNSIGNED__ = 1;
pub const __WINT_UNSIGNED__ = 1;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = LL;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_MAX__ = 255;
pub const __INT8_MAX__ = 127;
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_MAX__ = 65535;
pub const __INT16_MAX__ = 32767;
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = U;
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const __INT32_MAX__ = 2147483647;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = ULL;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = 127;
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = 255;
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = 127;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = 255;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = 32767;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __FINITE_MATH_ONLY__ = 0;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __PIC__ = 2;
pub const __pic__ = 2;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __FLT_RADIX__ = 2;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = 2;
pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
pub const __code_model_small__ = 1;
pub const __amd64__ = 1;
pub const __amd64 = 1;
pub const __x86_64 = 1;
pub const __x86_64__ = 1;
pub const __SEG_GS = 1;
pub const __SEG_FS = 1;
pub const __seg_gs = __attribute__(address_space(256));
pub const __seg_fs = __attribute__(address_space(257));
pub const __znver1 = 1;
pub const __znver1__ = 1;
pub const __tune_znver1__ = 1;
pub const __NO_MATH_INLINES = 1;
pub const __AES__ = 1;
pub const __PCLMUL__ = 1;
pub const __LZCNT__ = 1;
pub const __RDRND__ = 1;
pub const __FSGSBASE__ = 1;
pub const __BMI__ = 1;
pub const __BMI2__ = 1;
pub const __POPCNT__ = 1;
pub const __PRFCHW__ = 1;
pub const __RDSEED__ = 1;
pub const __ADX__ = 1;
pub const __MWAITX__ = 1;
pub const __MOVBE__ = 1;
pub const __SSE4A__ = 1;
pub const __FMA__ = 1;
pub const __F16C__ = 1;
pub const __SHA__ = 1;
pub const __FXSR__ = 1;
pub const __XSAVE__ = 1;
pub const __XSAVEOPT__ = 1;
pub const __XSAVEC__ = 1;
pub const __XSAVES__ = 1;
pub const __CLFLUSHOPT__ = 1;
pub const __CLZERO__ = 1;
pub const __AVX2__ = 1;
pub const __AVX__ = 1;
pub const __SSE4_2__ = 1;
pub const __SSE4_1__ = 1;
pub const __SSSE3__ = 1;
pub const __SSE3__ = 1;
pub const __SSE2__ = 1;
pub const __SSE2_MATH__ = 1;
pub const __SSE__ = 1;
pub const __SSE_MATH__ = 1;
pub const __MMX__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const _WIN32 = 1;
pub const _WIN64 = 1;
pub const _MSC_VER = 1928;
pub const _MSC_FULL_VER = 192829335;
pub const _MSC_BUILD = 1;
pub const _MSC_EXTENSIONS = 1;
pub const _INTEGRAL_MAX_BITS = 64;
pub const _M_X64 = 100;
pub const _M_AMD64 = 100;
pub const __STDC_HOSTED__ = 1;
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = 1;
pub const __STDC_UTF_32__ = 1;
pub const _DEBUG = 1;
pub const NULL = (@import("std").meta.cast(?*c_void, 0));
pub fn offsetof(t: anytype, d: anytype) callconv(.Inline) @TypeOf(__builtin_offsetof(t, d)) {
    return __builtin_offsetof(t, d);
}
pub const _VCRT_COMPILER_PREPROCESSOR = 1;
pub const _SAL_VERSION = 20;
pub const __SAL_H_VERSION = 180000000;
pub const _USE_DECLSPECS_FOR_SAL = 0;
pub const _USE_ATTRIBUTES_FOR_SAL = 0;
pub fn _At_(target: anytype, annos: anytype) callconv(.Inline) @TypeOf(_At_impl_(target, annos ++ _SAL_nop_impl_)) {
    return _At_impl_(target, annos ++ _SAL_nop_impl_);
}
pub fn _At_buffer_(target: anytype, iter: anytype, bound: anytype, annos: anytype) callconv(.Inline) @TypeOf(_At_buffer_impl_(target, iter, bound, annos ++ _SAL_nop_impl_)) {
    return _At_buffer_impl_(target, iter, bound, annos ++ _SAL_nop_impl_);
}
pub fn _When_(expr: anytype, annos: anytype) callconv(.Inline) @TypeOf(_When_impl_(expr, annos ++ _SAL_nop_impl_)) {
    return _When_impl_(expr, annos ++ _SAL_nop_impl_);
}
pub fn _Group_(annos: anytype) callconv(.Inline) @TypeOf(_Group_impl_(annos ++ _SAL_nop_impl_)) {
    return _Group_impl_(annos ++ _SAL_nop_impl_);
}
pub fn _GrouP_(annos: anytype) callconv(.Inline) @TypeOf(_GrouP_impl_(annos ++ _SAL_nop_impl_)) {
    return _GrouP_impl_(annos ++ _SAL_nop_impl_);
}
pub fn _Success_(expr: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Success_, expr, _Success_impl_(expr))) {
    return _SAL2_Source_(_Success_, expr, _Success_impl_(expr));
}
pub fn _Return_type_success_(expr: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Return_type_success_, expr, _Success_impl_(expr))) {
    return _SAL2_Source_(_Return_type_success_, expr, _Success_impl_(expr));
}
pub fn _On_failure_(annos: anytype) callconv(.Inline) @TypeOf(_On_failure_impl_(annos ++ _SAL_nop_impl_)) {
    return _On_failure_impl_(annos ++ _SAL_nop_impl_);
}
pub fn _Always_(annos: anytype) callconv(.Inline) @TypeOf(_Always_impl_(annos ++ _SAL_nop_impl_)) {
    return _Always_impl_(annos ++ _SAL_nop_impl_);
}
pub const _Use_decl_annotations_ = _Use_decl_anno_impl_;
pub const _Notref_ = _Notref_impl_;
pub const _Pre_defensive_ = _SA_annotes0(SAL_pre_defensive);
pub const _Post_defensive_ = _SA_annotes0(SAL_post_defensive);
pub fn _In_defensive_(annotes: anytype) callconv(.Inline) @TypeOf(_Pre_defensive_ ++ _Group_(annotes)) {
    return _Pre_defensive_ ++ _Group_(annotes);
}
pub fn _Out_defensive_(annotes: anytype) callconv(.Inline) @TypeOf(_Post_defensive_ ++ _Group_(annotes)) {
    return _Post_defensive_ ++ _Group_(annotes);
}
pub fn _Inout_defensive_(annotes: anytype) callconv(.Inline) @TypeOf(_Pre_defensive_ ++ _Post_defensive_ ++ _Group_(annotes)) {
    return _Pre_defensive_ ++ _Post_defensive_ ++ _Group_(annotes);
}
pub fn _Out_writes_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Out_writes_all_, size, _Out_writes_to_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Out_writes_all_, size, _Out_writes_to_(_Old_(size), _Old_(size)));
}
pub fn _Out_writes_all_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Out_writes_all_opt_, size, _Out_writes_to_opt_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Out_writes_all_opt_, size, _Out_writes_to_opt_(_Old_(size), _Old_(size)));
}
pub fn _Out_writes_bytes_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Out_writes_bytes_all_, size, _Out_writes_bytes_to_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Out_writes_bytes_all_, size, _Out_writes_bytes_to_(_Old_(size), _Old_(size)));
}
pub fn _Out_writes_bytes_all_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Out_writes_bytes_all_opt_, size, _Out_writes_bytes_to_opt_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Out_writes_bytes_all_opt_, size, _Out_writes_bytes_to_opt_(_Old_(size), _Old_(size)));
}
pub fn _Inout_updates_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Inout_updates_all_, size, _Inout_updates_to_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Inout_updates_all_, size, _Inout_updates_to_(_Old_(size), _Old_(size)));
}
pub fn _Inout_updates_all_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Inout_updates_all_opt_, size, _Inout_updates_to_opt_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Inout_updates_all_opt_, size, _Inout_updates_to_opt_(_Old_(size), _Old_(size)));
}
pub fn _Inout_updates_bytes_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Inout_updates_bytes_all_, size, _Inout_updates_bytes_to_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Inout_updates_bytes_all_, size, _Inout_updates_bytes_to_(_Old_(size), _Old_(size)));
}
pub fn _Inout_updates_bytes_all_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Inout_updates_bytes_all_opt_, size, _Inout_updates_bytes_to_opt_(_Old_(size), _Old_(size)))) {
    return _SAL2_Source_(_Inout_updates_bytes_all_opt_, size, _Inout_updates_bytes_to_opt_(_Old_(size), _Old_(size)));
}
pub fn _Outptr_result_buffer_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_buffer_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __cap_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_buffer_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __cap_impl(size)));
}
pub fn _Outptr_opt_result_buffer_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_buffer_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __cap_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_buffer_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __cap_impl(size)));
}
pub fn _Outptr_result_buffer_to_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_buffer_to_, blk: {
    _ = size;
    break :blk count;
}, _Out_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __cap_impl(size), __count_impl(count)))) {
    return _SAL2_Source_(_Outptr_result_buffer_to_, blk: {
        _ = size;
        break :blk count;
    }, _Out_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __cap_impl(size), __count_impl(count)));
}
pub fn _Outptr_opt_result_buffer_to_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_buffer_to_, blk: {
    _ = size;
    break :blk count;
}, _Out_opt_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __cap_impl(size), __count_impl(count)))) {
    return _SAL2_Source_(_Outptr_opt_result_buffer_to_, blk: {
        _ = size;
        break :blk count;
    }, _Out_opt_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __cap_impl(size), __count_impl(count)));
}
pub fn _Outptr_result_buffer_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_buffer_all_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __count_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_buffer_all_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __count_impl(size)));
}
pub fn _Outptr_opt_result_buffer_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_buffer_all_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __count_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_buffer_all_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __count_impl(size)));
}
pub fn _Outptr_result_buffer_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_buffer_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __cap_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_buffer_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __cap_impl(size)));
}
pub fn _Outptr_opt_result_buffer_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_buffer_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __cap_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_buffer_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __cap_impl(size)));
}
pub fn _Outptr_result_buffer_to_maybenull_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_buffer_to_maybenull_, blk: {
    _ = size;
    break :blk count;
}, _Out_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __cap_impl(size), __count_impl(count)))) {
    return _SAL2_Source_(_Outptr_result_buffer_to_maybenull_, blk: {
        _ = size;
        break :blk count;
    }, _Out_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __cap_impl(size), __count_impl(count)));
}
pub fn _Outptr_opt_result_buffer_to_maybenull_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_buffer_to_maybenull_, blk: {
    _ = size;
    break :blk count;
}, _Out_opt_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __cap_impl(size), __count_impl(count)))) {
    return _SAL2_Source_(_Outptr_opt_result_buffer_to_maybenull_, blk: {
        _ = size;
        break :blk count;
    }, _Out_opt_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __cap_impl(size), __count_impl(count)));
}
pub fn _Outptr_result_buffer_all_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_buffer_all_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __count_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_buffer_all_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __count_impl(size)));
}
pub fn _Outptr_opt_result_buffer_all_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_buffer_all_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __count_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_buffer_all_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __count_impl(size)));
}
pub fn _Outptr_result_bytebuffer_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_bytebuffer_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecap_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_bytebuffer_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecap_impl(size)));
}
pub fn _Outptr_opt_result_bytebuffer_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_bytebuffer_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecap_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_bytebuffer_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecap_impl(size)));
}
pub fn _Outptr_result_bytebuffer_to_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_bytebuffer_to_, blk: {
    _ = size;
    break :blk count;
}, _Out_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)))) {
    return _SAL2_Source_(_Outptr_result_bytebuffer_to_, blk: {
        _ = size;
        break :blk count;
    }, _Out_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)));
}
pub fn _Outptr_opt_result_bytebuffer_to_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_bytebuffer_to_, blk: {
    _ = size;
    break :blk count;
}, _Out_opt_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)))) {
    return _SAL2_Source_(_Outptr_opt_result_bytebuffer_to_, blk: {
        _ = size;
        break :blk count;
    }, _Out_opt_impl_ ++ _Deref_post3_impl_(__notnull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)));
}
pub fn _Outptr_result_bytebuffer_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_bytebuffer_all_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecount_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_bytebuffer_all_, size, _Out_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecount_impl(size)));
}
pub fn _Outptr_opt_result_bytebuffer_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_bytebuffer_all_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecount_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_bytebuffer_all_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__notnull_impl_notref, __bytecount_impl(size)));
}
pub fn _Outptr_result_bytebuffer_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_bytebuffer_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecap_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_bytebuffer_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecap_impl(size)));
}
pub fn _Outptr_opt_result_bytebuffer_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_bytebuffer_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecap_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_bytebuffer_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecap_impl(size)));
}
pub fn _Outptr_result_bytebuffer_to_maybenull_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_bytebuffer_to_maybenull_, blk: {
    _ = size;
    break :blk count;
}, _Out_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)))) {
    return _SAL2_Source_(_Outptr_result_bytebuffer_to_maybenull_, blk: {
        _ = size;
        break :blk count;
    }, _Out_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)));
}
pub fn _Outptr_opt_result_bytebuffer_to_maybenull_(size: anytype, count: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_bytebuffer_to_maybenull_, blk: {
    _ = size;
    break :blk count;
}, _Out_opt_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)))) {
    return _SAL2_Source_(_Outptr_opt_result_bytebuffer_to_maybenull_, blk: {
        _ = size;
        break :blk count;
    }, _Out_opt_impl_ ++ _Deref_post3_impl_(__maybenull_impl_notref, __bytecap_impl(size), __bytecount_impl(count)));
}
pub fn _Outptr_result_bytebuffer_all_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_result_bytebuffer_all_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecount_impl(size)))) {
    return _SAL2_Source_(_Outptr_result_bytebuffer_all_maybenull_, size, _Out_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecount_impl(size)));
}
pub fn _Outptr_opt_result_bytebuffer_all_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outptr_opt_result_bytebuffer_all_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecount_impl(size)))) {
    return _SAL2_Source_(_Outptr_opt_result_bytebuffer_all_maybenull_, size, _Out_opt_impl_ ++ _Deref_post2_impl_(__maybenull_impl_notref, __bytecount_impl(size)));
}
pub fn _Outref_result_buffer_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_buffer_, size, _Outref_ ++ _Post1_impl_(__cap_impl(size)))) {
    return _SAL2_Source_(_Outref_result_buffer_, size, _Outref_ ++ _Post1_impl_(__cap_impl(size)));
}
pub fn _Outref_result_bytebuffer_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_bytebuffer_, size, _Outref_ ++ _Post1_impl_(__bytecap_impl(size)))) {
    return _SAL2_Source_(_Outref_result_bytebuffer_, size, _Outref_ ++ _Post1_impl_(__bytecap_impl(size)));
}
pub fn _Outref_result_buffer_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_buffer_all_, size, _Outref_result_buffer_to_(size, _Old_(size)))) {
    return _SAL2_Source_(_Outref_result_buffer_all_, size, _Outref_result_buffer_to_(size, _Old_(size)));
}
pub fn _Outref_result_bytebuffer_all_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_bytebuffer_all_, size, _Outref_result_bytebuffer_to_(size, _Old_(size)))) {
    return _SAL2_Source_(_Outref_result_bytebuffer_all_, size, _Outref_result_bytebuffer_to_(size, _Old_(size)));
}
pub fn _Outref_result_buffer_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_buffer_maybenull_, size, _Outref_result_maybenull_ ++ _Post1_impl_(__cap_impl(size)))) {
    return _SAL2_Source_(_Outref_result_buffer_maybenull_, size, _Outref_result_maybenull_ ++ _Post1_impl_(__cap_impl(size)));
}
pub fn _Outref_result_bytebuffer_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_bytebuffer_maybenull_, size, _Outref_result_maybenull_ ++ _Post1_impl_(__bytecap_impl(size)))) {
    return _SAL2_Source_(_Outref_result_bytebuffer_maybenull_, size, _Outref_result_maybenull_ ++ _Post1_impl_(__bytecap_impl(size)));
}
pub fn _Outref_result_buffer_all_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_buffer_all_maybenull_, size, _Outref_result_buffer_to_maybenull_(size, _Old_(size)))) {
    return _SAL2_Source_(_Outref_result_buffer_all_maybenull_, size, _Outref_result_buffer_to_maybenull_(size, _Old_(size)));
}
pub fn _Outref_result_bytebuffer_all_maybenull_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Outref_result_bytebuffer_all_maybenull_, size, _Outref_result_bytebuffer_to_maybenull_(size, _Old_(size)))) {
    return _SAL2_Source_(_Outref_result_bytebuffer_all_maybenull_, size, _Outref_result_bytebuffer_to_maybenull_(size, _Old_(size)));
}
pub fn _Format_string_impl_(kind: anytype, where: anytype) callconv(.Inline) @TypeOf(_SA_annotes2(SAL_IsFormatString2, kind, where)) {
    return _SA_annotes2(SAL_IsFormatString2, kind, where);
}
pub fn _Printf_format_string_params_(x: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Printf_format_string_params_, x, _Format_string_impl_("printf", x))) {
    return _SAL2_Source_(_Printf_format_string_params_, x, _Format_string_impl_("printf", x));
}
pub fn _Scanf_format_string_params_(x: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Scanf_format_string_params_, x, _Format_string_impl_("scanf", x))) {
    return _SAL2_Source_(_Scanf_format_string_params_, x, _Format_string_impl_("scanf", x));
}
pub fn _Scanf_s_format_string_params_(x: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Scanf_s_format_string_params_, x, _Format_string_impl_("scanf_s", x))) {
    return _SAL2_Source_(_Scanf_s_format_string_params_, x, _Format_string_impl_("scanf_s", x));
}
pub fn _In_range_(lb: anytype, ub: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_In_range_, blk: {
    _ = lb;
    break :blk ub;
}, _In_range_impl_(lb, ub))) {
    return _SAL2_Source_(_In_range_, blk: {
        _ = lb;
        break :blk ub;
    }, _In_range_impl_(lb, ub));
}
pub fn _Out_range_(lb: anytype, ub: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Out_range_, blk: {
    _ = lb;
    break :blk ub;
}, _Out_range_impl_(lb, ub))) {
    return _SAL2_Source_(_Out_range_, blk: {
        _ = lb;
        break :blk ub;
    }, _Out_range_impl_(lb, ub));
}
pub fn _Ret_range_(lb: anytype, ub: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Ret_range_, blk: {
    _ = lb;
    break :blk ub;
}, _Ret_range_impl_(lb, ub))) {
    return _SAL2_Source_(_Ret_range_, blk: {
        _ = lb;
        break :blk ub;
    }, _Ret_range_impl_(lb, ub));
}
pub fn _Deref_in_range_(lb: anytype, ub: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Deref_in_range_, blk: {
    _ = lb;
    break :blk ub;
}, _Deref_in_range_impl_(lb, ub))) {
    return _SAL2_Source_(_Deref_in_range_, blk: {
        _ = lb;
        break :blk ub;
    }, _Deref_in_range_impl_(lb, ub));
}
pub fn _Deref_out_range_(lb: anytype, ub: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Deref_out_range_, blk: {
    _ = lb;
    break :blk ub;
}, _Deref_out_range_impl_(lb, ub))) {
    return _SAL2_Source_(_Deref_out_range_, blk: {
        _ = lb;
        break :blk ub;
    }, _Deref_out_range_impl_(lb, ub));
}
pub fn _Deref_ret_range_(lb: anytype, ub: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Deref_ret_range_, blk: {
    _ = lb;
    break :blk ub;
}, _Deref_ret_range_impl_(lb, ub))) {
    return _SAL2_Source_(_Deref_ret_range_, blk: {
        _ = lb;
        break :blk ub;
    }, _Deref_ret_range_impl_(lb, ub));
}
pub fn _Pre_satisfies_(cond: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Pre_satisfies_, cond, _Pre_satisfies_impl_(cond))) {
    return _SAL2_Source_(_Pre_satisfies_, cond, _Pre_satisfies_impl_(cond));
}
pub fn _Post_satisfies_(cond: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Post_satisfies_, cond, _Post_satisfies_impl_(cond))) {
    return _SAL2_Source_(_Post_satisfies_, cond, _Post_satisfies_impl_(cond));
}
pub fn _Struct_size_bytes_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Struct_size_bytes_, size, _Writable_bytes_(size))) {
    return _SAL2_Source_(_Struct_size_bytes_, size, _Writable_bytes_(size));
}
pub fn _Field_size_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_, size, _Notnull_ ++ _Writable_elements_(size))) {
    return _SAL2_Source_(_Field_size_, size, _Notnull_ ++ _Writable_elements_(size));
}
pub fn _Field_size_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_opt_, size, _Maybenull_ ++ _Writable_elements_(size))) {
    return _SAL2_Source_(_Field_size_opt_, size, _Maybenull_ ++ _Writable_elements_(size));
}
pub fn _Field_size_full_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_full_, size, _Field_size_part_(size, size))) {
    return _SAL2_Source_(_Field_size_full_, size, _Field_size_part_(size, size));
}
pub fn _Field_size_full_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_full_opt_, size, _Field_size_part_opt_(size, size))) {
    return _SAL2_Source_(_Field_size_full_opt_, size, _Field_size_part_opt_(size, size));
}
pub fn _Field_size_bytes_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_bytes_, size, _Notnull_ ++ _Writable_bytes_(size))) {
    return _SAL2_Source_(_Field_size_bytes_, size, _Notnull_ ++ _Writable_bytes_(size));
}
pub fn _Field_size_bytes_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_bytes_opt_, size, _Maybenull_ ++ _Writable_bytes_(size))) {
    return _SAL2_Source_(_Field_size_bytes_opt_, size, _Maybenull_ ++ _Writable_bytes_(size));
}
pub fn _Field_size_bytes_full_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_bytes_full_, size, _Field_size_bytes_part_(size, size))) {
    return _SAL2_Source_(_Field_size_bytes_full_, size, _Field_size_bytes_part_(size, size));
}
pub fn _Field_size_bytes_full_opt_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_size_bytes_full_opt_, size, _Field_size_bytes_part_opt_(size, size))) {
    return _SAL2_Source_(_Field_size_bytes_full_opt_, size, _Field_size_bytes_part_opt_(size, size));
}
pub fn _Field_range_(min: anytype, max: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Field_range_, blk: {
    _ = min;
    break :blk max;
}, _Field_range_impl_(min, max))) {
    return _SAL2_Source_(_Field_range_, blk: {
        _ = min;
        break :blk max;
    }, _Field_range_impl_(min, max));
}
pub const _Pre_ = _Pre_impl_;
pub const _Post_ = _Post_impl_;
pub const _Valid_ = _Valid_impl_;
pub const _Notvalid_ = _Notvalid_impl_;
pub const _Maybevalid_ = _Maybevalid_impl_;
pub fn _Readable_bytes_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Readable_bytes_, size, _Readable_bytes_impl_(size))) {
    return _SAL2_Source_(_Readable_bytes_, size, _Readable_bytes_impl_(size));
}
pub fn _Readable_elements_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Readable_elements_, size, _Readable_elements_impl_(size))) {
    return _SAL2_Source_(_Readable_elements_, size, _Readable_elements_impl_(size));
}
pub fn _Writable_bytes_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Writable_bytes_, size, _Writable_bytes_impl_(size))) {
    return _SAL2_Source_(_Writable_bytes_, size, _Writable_bytes_impl_(size));
}
pub fn _Writable_elements_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Writable_elements_, size, _Writable_elements_impl_(size))) {
    return _SAL2_Source_(_Writable_elements_, size, _Writable_elements_impl_(size));
}
pub fn _Pre_writable_size_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Pre_writable_size_, size, _Pre1_impl_(__cap_impl(size)))) {
    return _SAL2_Source_(_Pre_writable_size_, size, _Pre1_impl_(__cap_impl(size)));
}
pub fn _Pre_writable_byte_size_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Pre_writable_byte_size_, size, _Pre1_impl_(__bytecap_impl(size)))) {
    return _SAL2_Source_(_Pre_writable_byte_size_, size, _Pre1_impl_(__bytecap_impl(size)));
}
pub fn _Post_writable_size_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Post_writable_size_, size, _Post1_impl_(__cap_impl(size)))) {
    return _SAL2_Source_(_Post_writable_size_, size, _Post1_impl_(__cap_impl(size)));
}
pub fn _Post_writable_byte_size_(size: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Post_writable_byte_size_, size, _Post1_impl_(__bytecap_impl(size)))) {
    return _SAL2_Source_(_Post_writable_byte_size_, size, _Post1_impl_(__bytecap_impl(size)));
}
pub fn _Inout_count_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_count_, size, _Prepost_count_(size))) {
    return _SAL1_1_Source_(_Inout_count_, size, _Prepost_count_(size));
}
pub fn _Inout_opt_count_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_count_, size, _Prepost_opt_count_(size))) {
    return _SAL1_1_Source_(_Inout_opt_count_, size, _Prepost_opt_count_(size));
}
pub fn _Inout_bytecount_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_bytecount_, size, _Prepost_bytecount_(size))) {
    return _SAL1_1_Source_(_Inout_bytecount_, size, _Prepost_bytecount_(size));
}
pub fn _Inout_opt_bytecount_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_bytecount_, size, _Prepost_opt_bytecount_(size))) {
    return _SAL1_1_Source_(_Inout_opt_bytecount_, size, _Prepost_opt_bytecount_(size));
}
pub fn _Inout_count_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_count_c_, size, _Prepost_count_c_(size))) {
    return _SAL1_1_Source_(_Inout_count_c_, size, _Prepost_count_c_(size));
}
pub fn _Inout_opt_count_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_count_c_, size, _Prepost_opt_count_c_(size))) {
    return _SAL1_1_Source_(_Inout_opt_count_c_, size, _Prepost_opt_count_c_(size));
}
pub fn _Inout_bytecount_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_bytecount_c_, size, _Prepost_bytecount_c_(size))) {
    return _SAL1_1_Source_(_Inout_bytecount_c_, size, _Prepost_bytecount_c_(size));
}
pub fn _Inout_opt_bytecount_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_bytecount_c_, size, _Prepost_opt_bytecount_c_(size))) {
    return _SAL1_1_Source_(_Inout_opt_bytecount_c_, size, _Prepost_opt_bytecount_c_(size));
}
pub fn _Inout_z_count_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_z_count_, size, _Prepost_z_ ++ _Prepost_count_(size))) {
    return _SAL1_1_Source_(_Inout_z_count_, size, _Prepost_z_ ++ _Prepost_count_(size));
}
pub fn _Inout_opt_z_count_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_z_count_, size, _Prepost_z_ ++ _Prepost_opt_count_(size))) {
    return _SAL1_1_Source_(_Inout_opt_z_count_, size, _Prepost_z_ ++ _Prepost_opt_count_(size));
}
pub fn _Inout_z_bytecount_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_z_bytecount_, size, _Prepost_z_ ++ _Prepost_bytecount_(size))) {
    return _SAL1_1_Source_(_Inout_z_bytecount_, size, _Prepost_z_ ++ _Prepost_bytecount_(size));
}
pub fn _Inout_opt_z_bytecount_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_z_bytecount_, size, _Prepost_z_ ++ _Prepost_opt_bytecount_(size))) {
    return _SAL1_1_Source_(_Inout_opt_z_bytecount_, size, _Prepost_z_ ++ _Prepost_opt_bytecount_(size));
}
pub fn _Inout_z_count_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_z_count_c_, size, _Prepost_z_ ++ _Prepost_count_c_(size))) {
    return _SAL1_1_Source_(_Inout_z_count_c_, size, _Prepost_z_ ++ _Prepost_count_c_(size));
}
pub fn _Inout_opt_z_count_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_z_count_c_, size, _Prepost_z_ ++ _Prepost_opt_count_c_(size))) {
    return _SAL1_1_Source_(_Inout_opt_z_count_c_, size, _Prepost_z_ ++ _Prepost_opt_count_c_(size));
}
pub fn _Inout_z_bytecount_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_z_bytecount_c_, size, _Prepost_z_ ++ _Prepost_bytecount_c_(size))) {
    return _SAL1_1_Source_(_Inout_z_bytecount_c_, size, _Prepost_z_ ++ _Prepost_bytecount_c_(size));
}
pub fn _Inout_opt_z_bytecount_c_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_z_bytecount_c_, size, _Prepost_z_ ++ _Prepost_opt_bytecount_c_(size))) {
    return _SAL1_1_Source_(_Inout_opt_z_bytecount_c_, size, _Prepost_z_ ++ _Prepost_opt_bytecount_c_(size));
}
pub fn _Inout_ptrdiff_count_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_ptrdiff_count_, size, _Pre_ptrdiff_count_(size))) {
    return _SAL1_1_Source_(_Inout_ptrdiff_count_, size, _Pre_ptrdiff_count_(size));
}
pub fn _Inout_opt_ptrdiff_count_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_ptrdiff_count_, size, _Pre_opt_ptrdiff_count_(size))) {
    return _SAL1_1_Source_(_Inout_opt_ptrdiff_count_, size, _Pre_opt_ptrdiff_count_(size));
}
pub fn _Inout_count_x_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_count_x_, size, _Prepost_count_x_(size))) {
    return _SAL1_1_Source_(_Inout_count_x_, size, _Prepost_count_x_(size));
}
pub fn _Inout_opt_count_x_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_count_x_, size, _Prepost_opt_count_x_(size))) {
    return _SAL1_1_Source_(_Inout_opt_count_x_, size, _Prepost_opt_count_x_(size));
}
pub fn _Inout_bytecount_x_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_bytecount_x_, size, _Prepost_bytecount_x_(size))) {
    return _SAL1_1_Source_(_Inout_bytecount_x_, size, _Prepost_bytecount_x_(size));
}
pub fn _Inout_opt_bytecount_x_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Inout_opt_bytecount_x_, size, _Prepost_opt_bytecount_x_(size))) {
    return _SAL1_1_Source_(_Inout_opt_bytecount_x_, size, _Prepost_opt_bytecount_x_(size));
}
pub fn _Post_cap_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Post_cap_, size, _Post1_impl_(__cap_impl(size)))) {
    return _SAL1_1_Source_(_Post_cap_, size, _Post1_impl_(__cap_impl(size)));
}
pub fn _Post_bytecap_(size: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(_Post_bytecap_, size, _Post1_impl_(__bytecap_impl(size)))) {
    return _SAL1_1_Source_(_Post_bytecap_, size, _Post1_impl_(__bytecap_impl(size)));
}
pub const _SAL_nop_impl_ = X;
pub fn __ecount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__ecount, size, __notnull ++ __elem_writableTo(size))) {
    return _SAL1_Source_(__ecount, size, __notnull ++ __elem_writableTo(size));
}
pub fn __bcount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__bcount, size, __notnull ++ __byte_writableTo(size))) {
    return _SAL1_Source_(__bcount, size, __notnull ++ __byte_writableTo(size));
}
pub fn __in_ecount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_ecount, size, _In_reads_(size))) {
    return _SAL1_Source_(__in_ecount, size, _In_reads_(size));
}
pub fn __in_bcount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_bcount, size, _In_reads_bytes_(size))) {
    return _SAL1_Source_(__in_bcount, size, _In_reads_bytes_(size));
}
pub fn __in_ecount_z(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_ecount_z, size, _In_reads_z_(size))) {
    return _SAL1_Source_(__in_ecount_z, size, _In_reads_z_(size));
}
pub fn __in_ecount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_ecount_nz, size, __in_ecount(size))) {
    return _SAL1_Source_(__in_ecount_nz, size, __in_ecount(size));
}
pub fn __in_bcount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_bcount_nz, size, __in_bcount(size))) {
    return _SAL1_Source_(__in_bcount_nz, size, __in_bcount(size));
}
pub fn __out_ecount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_ecount, size, _Out_writes_(size))) {
    return _SAL1_Source_(__out_ecount, size, _Out_writes_(size));
}
pub fn __out_bcount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_bcount, size, _Out_writes_bytes_(size))) {
    return _SAL1_Source_(__out_bcount, size, _Out_writes_bytes_(size));
}
pub fn __out_ecount_part(size: anytype, length: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_ecount_part, blk: {
    _ = size;
    break :blk length;
}, _Out_writes_to_(size, length))) {
    return _SAL1_Source_(__out_ecount_part, blk: {
        _ = size;
        break :blk length;
    }, _Out_writes_to_(size, length));
}
pub fn __out_bcount_part(size: anytype, length: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_bcount_part, blk: {
    _ = size;
    break :blk length;
}, _Out_writes_bytes_to_(size, length))) {
    return _SAL1_Source_(__out_bcount_part, blk: {
        _ = size;
        break :blk length;
    }, _Out_writes_bytes_to_(size, length));
}
pub fn __out_ecount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_ecount_full, size, _Out_writes_all_(size))) {
    return _SAL1_Source_(__out_ecount_full, size, _Out_writes_all_(size));
}
pub fn __out_bcount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_bcount_full, size, _Out_writes_bytes_all_(size))) {
    return _SAL1_Source_(__out_bcount_full, size, _Out_writes_bytes_all_(size));
}
pub fn __inout_ecount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_ecount, size, _Inout_updates_(size))) {
    return _SAL1_Source_(__inout_ecount, size, _Inout_updates_(size));
}
pub fn __inout_bcount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_bcount, size, _Inout_updates_bytes_(size))) {
    return _SAL1_Source_(__inout_bcount, size, _Inout_updates_bytes_(size));
}
pub fn __inout_ecount_part(size: anytype, length: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_ecount_part, blk: {
    _ = size;
    break :blk length;
}, _Inout_updates_to_(size, length))) {
    return _SAL1_Source_(__inout_ecount_part, blk: {
        _ = size;
        break :blk length;
    }, _Inout_updates_to_(size, length));
}
pub fn __inout_bcount_part(size: anytype, length: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_bcount_part, blk: {
    _ = size;
    break :blk length;
}, _Inout_updates_bytes_to_(size, length))) {
    return _SAL1_Source_(__inout_bcount_part, blk: {
        _ = size;
        break :blk length;
    }, _Inout_updates_bytes_to_(size, length));
}
pub fn __inout_ecount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_ecount_full, size, _Inout_updates_all_(size))) {
    return _SAL1_Source_(__inout_ecount_full, size, _Inout_updates_all_(size));
}
pub fn __inout_bcount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_bcount_full, size, _Inout_updates_bytes_all_(size))) {
    return _SAL1_Source_(__inout_bcount_full, size, _Inout_updates_bytes_all_(size));
}
pub fn __inout_ecount_z(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_ecount_z, size, _Inout_updates_z_(size))) {
    return _SAL1_Source_(__inout_ecount_z, size, _Inout_updates_z_(size));
}
pub fn __inout_ecount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_ecount_nz, size, __inout_ecount(size))) {
    return _SAL1_Source_(__inout_ecount_nz, size, __inout_ecount(size));
}
pub fn __inout_bcount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_bcount_nz, size, __inout_bcount(size))) {
    return _SAL1_Source_(__inout_bcount_nz, size, __inout_bcount(size));
}
pub fn __in_ecount_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_ecount_opt, size, _In_reads_opt_(size))) {
    return _SAL1_Source_(__in_ecount_opt, size, _In_reads_opt_(size));
}
pub fn __in_bcount_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_bcount_opt, size, _In_reads_bytes_opt_(size))) {
    return _SAL1_Source_(__in_bcount_opt, size, _In_reads_bytes_opt_(size));
}
pub fn __in_ecount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_ecount_nz_opt, size, __in_ecount_opt(size))) {
    return _SAL1_Source_(__in_ecount_nz_opt, size, __in_ecount_opt(size));
}
pub fn __in_bcount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__in_bcount_nz_opt, size, __in_bcount_opt(size))) {
    return _SAL1_Source_(__in_bcount_nz_opt, size, __in_bcount_opt(size));
}
pub fn __out_ecount_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_ecount_opt, size, _Out_writes_opt_(size))) {
    return _SAL1_Source_(__out_ecount_opt, size, _Out_writes_opt_(size));
}
pub fn __out_bcount_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__out_bcount_opt, size, _Out_writes_bytes_opt_(size))) {
    return _SAL1_Source_(__out_bcount_opt, size, _Out_writes_bytes_opt_(size));
}
pub fn __inout_bcount_z_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_bcount_z_opt, size, __inout_bcount_opt(size))) {
    return _SAL1_Source_(__inout_bcount_z_opt, size, __inout_bcount_opt(size));
}
pub fn __inout_ecount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_ecount_nz_opt, size, __inout_ecount_opt(size))) {
    return _SAL1_Source_(__inout_ecount_nz_opt, size, __inout_ecount_opt(size));
}
pub fn __inout_bcount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__inout_bcount_nz_opt, size, __inout_bcount_opt(size))) {
    return _SAL1_Source_(__inout_bcount_nz_opt, size, __inout_bcount_opt(size));
}
pub fn __deref_out_ecount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_ecount, size, _Outptr_result_buffer_(size))) {
    return _SAL1_Source_(__deref_out_ecount, size, _Outptr_result_buffer_(size));
}
pub fn __deref_out_bcount(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_bcount, size, _Outptr_result_bytebuffer_(size))) {
    return _SAL1_Source_(__deref_out_bcount, size, _Outptr_result_bytebuffer_(size));
}
pub fn __deref_out_ecount_part(size: anytype, length: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_ecount_part, blk: {
    _ = size;
    break :blk length;
}, _Outptr_result_buffer_to_(size, length))) {
    return _SAL1_Source_(__deref_out_ecount_part, blk: {
        _ = size;
        break :blk length;
    }, _Outptr_result_buffer_to_(size, length));
}
pub fn __deref_out_bcount_part(size: anytype, length: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_bcount_part, blk: {
    _ = size;
    break :blk length;
}, _Outptr_result_bytebuffer_to_(size, length))) {
    return _SAL1_Source_(__deref_out_bcount_part, blk: {
        _ = size;
        break :blk length;
    }, _Outptr_result_bytebuffer_to_(size, length));
}
pub fn __deref_out_ecount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_ecount_full, size, __deref_out_ecount_part(size, size))) {
    return _SAL1_Source_(__deref_out_ecount_full, size, __deref_out_ecount_part(size, size));
}
pub fn __deref_out_bcount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_bcount_full, size, __deref_out_bcount_part(size, size))) {
    return _SAL1_Source_(__deref_out_bcount_full, size, __deref_out_bcount_part(size, size));
}
pub fn __deref_out_ecount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_ecount_nz, size, __deref_out_ecount(size))) {
    return _SAL1_Source_(__deref_out_ecount_nz, size, __deref_out_ecount(size));
}
pub fn __deref_out_bcount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_bcount_nz, size, __deref_out_ecount(size))) {
    return _SAL1_Source_(__deref_out_bcount_nz, size, __deref_out_ecount(size));
}
pub fn __deref_inout_ecount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_inout_ecount_full, size, __deref_inout_ecount_part(size, size))) {
    return _SAL1_Source_(__deref_inout_ecount_full, size, __deref_inout_ecount_part(size, size));
}
pub fn __deref_inout_bcount_full(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_inout_bcount_full, size, __deref_inout_bcount_part(size, size))) {
    return _SAL1_Source_(__deref_inout_bcount_full, size, __deref_inout_bcount_part(size, size));
}
pub fn __deref_inout_ecount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_inout_ecount_nz, size, __deref_inout_ecount(size))) {
    return _SAL1_Source_(__deref_inout_ecount_nz, size, __deref_inout_ecount(size));
}
pub fn __deref_inout_bcount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_inout_bcount_nz, size, __deref_inout_ecount(size))) {
    return _SAL1_Source_(__deref_inout_bcount_nz, size, __deref_inout_ecount(size));
}
pub fn __deref_out_ecount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_ecount_nz_opt, size, __deref_out_ecount_opt(size))) {
    return _SAL1_Source_(__deref_out_ecount_nz_opt, size, __deref_out_ecount_opt(size));
}
pub fn __deref_out_bcount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_out_bcount_nz_opt, size, __deref_out_bcount_opt(size))) {
    return _SAL1_Source_(__deref_out_bcount_nz_opt, size, __deref_out_bcount_opt(size));
}
pub fn __deref_inout_ecount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_inout_ecount_nz_opt, size, __deref_inout_ecount_opt(size))) {
    return _SAL1_Source_(__deref_inout_ecount_nz_opt, size, __deref_inout_ecount_opt(size));
}
pub fn __deref_inout_bcount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_inout_bcount_nz_opt, size, __deref_inout_bcount_opt(size))) {
    return _SAL1_Source_(__deref_inout_bcount_nz_opt, size, __deref_inout_bcount_opt(size));
}
pub fn __deref_opt_inout_ecount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_opt_inout_ecount_nz, size, __deref_opt_inout_ecount(size))) {
    return _SAL1_Source_(__deref_opt_inout_ecount_nz, size, __deref_opt_inout_ecount(size));
}
pub fn __deref_opt_inout_bcount_nz(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_opt_inout_bcount_nz, size, __deref_opt_inout_bcount(size))) {
    return _SAL1_Source_(__deref_opt_inout_bcount_nz, size, __deref_opt_inout_bcount(size));
}
pub fn __deref_opt_out_ecount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_opt_out_ecount_nz_opt, size, __deref_opt_out_ecount_opt(size))) {
    return _SAL1_Source_(__deref_opt_out_ecount_nz_opt, size, __deref_opt_out_ecount_opt(size));
}
pub fn __deref_opt_out_bcount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_opt_out_bcount_nz_opt, size, __deref_opt_out_bcount_opt(size))) {
    return _SAL1_Source_(__deref_opt_out_bcount_nz_opt, size, __deref_opt_out_bcount_opt(size));
}
pub fn __deref_opt_inout_ecount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_opt_inout_ecount_nz_opt, size, __deref_opt_inout_ecount_opt(size))) {
    return _SAL1_Source_(__deref_opt_inout_ecount_nz_opt, size, __deref_opt_inout_ecount_opt(size));
}
pub fn __deref_opt_inout_bcount_nz_opt(size: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__deref_opt_inout_bcount_nz_opt, size, __deref_opt_inout_bcount_opt(size))) {
    return _SAL1_Source_(__deref_opt_inout_bcount_nz_opt, size, __deref_opt_inout_bcount_opt(size));
}
pub fn __success(expr: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(__success, expr, _Success_(expr))) {
    return _SAL1_1_Source_(__success, expr, _Success_(expr));
}
pub fn __typefix(ctype: anytype) callconv(.Inline) @TypeOf(_SAL1_Source_(__typefix, ctype, __inner_typefix(ctype))) {
    return _SAL1_Source_(__typefix, ctype, __inner_typefix(ctype));
}
pub const __override = __inner_override;
pub const __callback = __inner_callback;
pub fn __blocksOn(resource: anytype) callconv(.Inline) @TypeOf(_SAL_L_Source_(__blocksOn, resource, __inner_blocksOn(resource))) {
    return _SAL_L_Source_(__blocksOn, resource, __inner_blocksOn(resource));
}
pub fn __control_entrypoint(category: anytype) callconv(.Inline) @TypeOf(_SAL_L_Source_(__control_entrypoint, category, __inner_control_entrypoint(category))) {
    return _SAL_L_Source_(__control_entrypoint, category, __inner_control_entrypoint(category));
}
pub fn __data_entrypoint(category: anytype) callconv(.Inline) @TypeOf(_SAL_L_Source_(__data_entrypoint, category, __inner_data_entrypoint(category))) {
    return _SAL_L_Source_(__data_entrypoint, category, __inner_data_entrypoint(category));
}
pub const __useHeader = _Use_decl_anno_impl_;
pub fn __on_failure(annotes: anytype) callconv(.Inline) @TypeOf(_SAL1_1_Source_(__on_failure, annotes, _On_failure_impl_(annotes ++ _SAL_nop_impl_))) {
    return _SAL1_1_Source_(__on_failure, annotes, _On_failure_impl_(annotes ++ _SAL_nop_impl_));
}
pub const __fallthrough = __inner_fallthrough;
pub fn __MKID(x: anytype, y: anytype) callconv(.Inline) @TypeOf(___MKID(x, y)) {
    return ___MKID(x, y);
}
pub fn __GENSYM(x: anytype) callconv(.Inline) @TypeOf(__MKID(x, __COUNTER__)) {
    return __MKID(x, __COUNTER__);
}
pub fn _Called_from_function_class_(x: anytype) callconv(.Inline) @TypeOf(_In_function_class_(x)) {
    return _In_function_class_(x);
}
pub fn _Function_class_(x: anytype) callconv(.Inline) @TypeOf(_SAL2_Source_(_Function_class_, x, _SA_annotes1(SAL_functionClassNew, _SA_SPECSTRIZE(x)))) {
    return _SAL2_Source_(_Function_class_, x, _SA_annotes1(SAL_functionClassNew, _SA_SPECSTRIZE(x)));
}
pub const _Maybe_raises_SEH_exception_ = _SAL2_Source_(_Maybe_raises_SEH_exception_, x, _Pre_ ++ _SA_annotes1(SAL_inTry, __yes));
pub const _Raises_SEH_exception_ = _SAL2_Source_(_Raises_SEH_exception_, x, _Maybe_raises_SEH_exception_ ++ _Analysis_noreturn_);
pub const _Benign_race_begin_ = __pragma(warning(push));
pub const _Benign_race_end_ = __pragma(warning(pop));
pub const _No_competing_thread_begin_ = __pragma(warning(push));
pub const _No_competing_thread_end_ = __pragma(warning(pop));
pub const BENIGN_RACE_BEGIN = __pragma(warning(push));
pub const BENIGN_RACE_END = __pragma(warning(pop));
pub const NO_COMPETING_THREAD_BEGIN = __pragma(warning(push));
pub const NO_COMPETING_THREAD_END = __pragma(warning(pop));
pub const _CRT_PACKING = 8;
pub fn _ADDRESSOF(v: anytype) callconv(.Inline) @TypeOf(&v) {
    return &v;
}
pub fn _SLOTSIZEOF(t: anytype) callconv(.Inline) @TypeOf(@import("std").meta.sizeof(t)) {
    return @import("std").meta.sizeof(t);
}
pub fn _APALIGN(t: anytype, ap: anytype) callconv(.Inline) @TypeOf(__alignof(t)) {
    return __alignof(t);
}
pub fn __crt_va_start_a(ap: anytype, x: anytype) callconv(.Inline) @TypeOf((@import("std").meta.cast(c_void, __va_start(&ap, x)))) {
    return (@import("std").meta.cast(c_void, __va_start(&ap, x)));
}
pub fn __crt_va_start(ap: anytype, x: anytype) callconv(.Inline) @TypeOf(__crt_va_start_a(ap, x)) {
    return __crt_va_start_a(ap, x);
}
pub const _CRT_BEGIN_C_HEADER = __pragma(pack(push, _CRT_PACKING));
pub const _CRT_END_C_HEADER = __pragma(pack(pop));
pub const _HAS_EXCEPTIONS = 1;
pub fn _CRT_STRINGIZE(x: anytype) callconv(.Inline) @TypeOf(_CRT_STRINGIZE_(x)) {
    return _CRT_STRINGIZE_(x);
}
pub fn _CRT_WIDE(s: anytype) callconv(.Inline) @TypeOf(_CRT_WIDE_(s)) {
    return _CRT_WIDE_(s);
}
pub fn _CRT_CONCATENATE(a: anytype, b: anytype) callconv(.Inline) @TypeOf(_CRT_CONCATENATE_(a, b)) {
    return _CRT_CONCATENATE_(a, b);
}
pub const __CLRCALL_OR_CDECL = __cdecl;
pub const __CLRCALL_PURE_OR_CDECL = __cdecl;
pub const __CRTDECL = __CLRCALL_PURE_OR_CDECL;
pub const _VCRT_NOALIAS = __declspec(@"noalias");
pub const _VCRT_ALLOCATOR = __declspec(allocator);
pub fn _VCRT_ALIGN(x: anytype) callconv(.Inline) @TypeOf(__declspec(@"align"(x))) {
    return __declspec(@"align"(x));
}
pub const _WConst_return = _CONST_RETURN;
pub const _UNALIGNED = __unaligned;
pub fn __crt_countof(_Array: anytype) callconv(.Inline) @TypeOf(@import("std").meta.sizeof(_Array) / @import("std").meta.sizeof(_Array[0])) {
    return @import("std").meta.sizeof(_Array) / @import("std").meta.sizeof(_Array[0]);
}
pub const _STL_LANG = @as(c_long, 0);
pub const _HAS_CXX17 = 0;
pub const _HAS_CXX20 = 0;
pub const _HAS_NODISCARD = 0;
pub fn _CRT_DEPRECATE_TEXT(_Text: anytype) callconv(.Inline) @TypeOf(__declspec(deprecated(_Text))) {
    return __declspec(deprecated(_Text));
}
pub fn __vcrt_malloc_normal(_Size: anytype) callconv(.Inline) @TypeOf(malloc(_Size)) {
    return malloc(_Size);
}
pub fn __vcrt_calloc_normal(_Count: anytype, _Size: anytype) callconv(.Inline) @TypeOf(calloc(_Count, _Size)) {
    return calloc(_Count, _Size);
}
pub fn __vcrt_free_normal(_Memory: anytype) callconv(.Inline) @TypeOf(free(_Memory)) {
    return free(_Memory);
}
pub const INT8_MIN = -(127 ++ i8) - 1;
pub const INT16_MIN = -(32767 ++ i16) - 1;
pub const INT32_MIN = -(2147483647 ++ i32) - 1;
pub const INT64_MIN = -(9223372036854775807 ++ i64) - 1;
pub const INT8_MAX = 127 ++ i8;
pub const INT16_MAX = 32767 ++ i16;
pub const INT32_MAX = 2147483647 ++ i32;
pub const INT64_MAX = 9223372036854775807 ++ i64;
pub const UINT8_MAX = @as(c_uint, 0xff) ++ i8;
pub const UINT16_MAX = @as(c_uint, 0xffff) ++ i16;
pub const UINT32_MAX = @as(c_uint, 0xffffffff) ++ i32;
pub const UINT64_MAX = @as(c_uint, 0xffffffffffffffff) ++ i64;
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT32_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT32_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT32_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INTPTR_MIN;
pub const PTRDIFF_MAX = INTPTR_MAX;
pub const SIZE_MAX = @as(c_uint, 0xffffffffffffffff) ++ i64;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const WCHAR_MIN = 0x0000;
pub const WCHAR_MAX = 0xffff;
pub const WINT_MIN = 0x0000;
pub const WINT_MAX = 0xffff;
pub fn INT8_C(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn INT16_C(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn INT32_C(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn UINT8_C(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn UINT16_C(x: anytype) callconv(.Inline) @TypeOf(x) {
    return x;
}
pub fn INTMAX_C(x: anytype) callconv(.Inline) @TypeOf(INT64_C(x)) {
    return INT64_C(x);
}
pub fn UINTMAX_C(x: anytype) callconv(.Inline) @TypeOf(UINT64_C(x)) {
    return UINT64_C(x);
}
pub const APIENTRY = __stdcall;
pub const WINGDIAPI = __declspec(dllimport);
pub const CALLBACK = __stdcall;
pub const WINAPI_PARTITION_SERVER = WINAPI_FAMILY == WINAPI_FAMILY_SERVER;
pub const WINAPI_PARTITION_PKG_WINTRUST = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_WEBSERVICES = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_EVENTLOGSERVICE = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_VHD = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_PERFCOUNTER = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_SECURESTARTUP = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_REMOTEFS = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_BOOTABLESKU = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_CMDTOOLS = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_DISM = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_CORESETUP = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_APPRUNTIME = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_ESENT = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_WINMGMT = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_WNV = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_CLUSTER = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_VSS = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_TRAFFIC = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_ISCSI = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_STORAGE = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_MPSSVC = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_APPXDEPLOYMENT = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_PARTITION_PKG_WER = WINAPI_PARTITION_SERVER == 1;
pub const WINAPI_FAMILY_PC_APP = 2;
pub const WINAPI_FAMILY_PHONE_APP = 3;
pub const WINAPI_FAMILY_SYSTEM = 4;
pub const WINAPI_FAMILY_SERVER = 5;
pub const WINAPI_FAMILY_DESKTOP_APP = 100;
pub const WINAPI_FAMILY_APP = WINAPI_FAMILY_PC_APP;
pub const WINAPI_FAMILY = WINAPI_FAMILY_DESKTOP_APP;
pub const WINAPI_PARTITION_DESKTOP = WINAPI_FAMILY == WINAPI_FAMILY_DESKTOP_APP;
pub const WINAPI_PARTITION_APP = ((WINAPI_FAMILY == WINAPI_FAMILY_DESKTOP_APP) or (WINAPI_FAMILY == WINAPI_FAMILY_PC_APP)) or (WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP);
pub const WINAPI_PARTITION_PC_APP = (WINAPI_FAMILY == WINAPI_FAMILY_DESKTOP_APP) or (WINAPI_FAMILY == WINAPI_FAMILY_PC_APP);
pub const WINAPI_PARTITION_PHONE_APP = WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP;
pub const WINAPI_PARTITION_SYSTEM = (WINAPI_FAMILY == WINAPI_FAMILY_SYSTEM) or (WINAPI_FAMILY == WINAPI_FAMILY_SERVER);
pub const WINAPI_PARTITION_PHONE = WINAPI_PARTITION_PHONE_APP;
pub fn WINAPI_FAMILY_PARTITION(Partitions: anytype) callconv(.Inline) @TypeOf(Partitions) {
    return Partitions;
}
pub const _WINAPI_DEPRECATED_DECLARATION = __declspec(deprecated("This API cannot be used in the context of the caller's application type."));
pub const GL_VERSION_1_1 = 1;
pub const GL_ACCUM = 0x0100;
pub const GL_LOAD = 0x0101;
pub const GL_RETURN = 0x0102;
pub const GL_MULT = 0x0103;
pub const GL_ADD = 0x0104;
pub const GL_NEVER = 0x0200;
pub const GL_LESS = 0x0201;
pub const GL_EQUAL = 0x0202;
pub const GL_LEQUAL = 0x0203;
pub const GL_GREATER = 0x0204;
pub const GL_NOTEQUAL = 0x0205;
pub const GL_GEQUAL = 0x0206;
pub const GL_ALWAYS = 0x0207;
pub const GL_CURRENT_BIT = 0x00000001;
pub const GL_POINT_BIT = 0x00000002;
pub const GL_LINE_BIT = 0x00000004;
pub const GL_POLYGON_BIT = 0x00000008;
pub const GL_POLYGON_STIPPLE_BIT = 0x00000010;
pub const GL_PIXEL_MODE_BIT = 0x00000020;
pub const GL_LIGHTING_BIT = 0x00000040;
pub const GL_FOG_BIT = 0x00000080;
pub const GL_DEPTH_BUFFER_BIT = 0x00000100;
pub const GL_ACCUM_BUFFER_BIT = 0x00000200;
pub const GL_STENCIL_BUFFER_BIT = 0x00000400;
pub const GL_VIEWPORT_BIT = 0x00000800;
pub const GL_TRANSFORM_BIT = 0x00001000;
pub const GL_ENABLE_BIT = 0x00002000;
pub const GL_COLOR_BUFFER_BIT = 0x00004000;
pub const GL_HINT_BIT = 0x00008000;
pub const GL_EVAL_BIT = 0x00010000;
pub const GL_LIST_BIT = 0x00020000;
pub const GL_TEXTURE_BIT = 0x00040000;
pub const GL_SCISSOR_BIT = 0x00080000;
pub const GL_ALL_ATTRIB_BITS = 0x000fffff;
pub const GL_POINTS = 0x0000;
pub const GL_LINES = 0x0001;
pub const GL_LINE_LOOP = 0x0002;
pub const GL_LINE_STRIP = 0x0003;
pub const GL_TRIANGLES = 0x0004;
pub const GL_TRIANGLE_STRIP = 0x0005;
pub const GL_TRIANGLE_FAN = 0x0006;
pub const GL_QUADS = 0x0007;
pub const GL_QUAD_STRIP = 0x0008;
pub const GL_POLYGON = 0x0009;
pub const GL_ZERO = 0;
pub const GL_ONE = 1;
pub const GL_SRC_COLOR = 0x0300;
pub const GL_ONE_MINUS_SRC_COLOR = 0x0301;
pub const GL_SRC_ALPHA = 0x0302;
pub const GL_ONE_MINUS_SRC_ALPHA = 0x0303;
pub const GL_DST_ALPHA = 0x0304;
pub const GL_ONE_MINUS_DST_ALPHA = 0x0305;
pub const GL_DST_COLOR = 0x0306;
pub const GL_ONE_MINUS_DST_COLOR = 0x0307;
pub const GL_SRC_ALPHA_SATURATE = 0x0308;
pub const GL_TRUE = 1;
pub const GL_FALSE = 0;
pub const GL_CLIP_PLANE0 = 0x3000;
pub const GL_CLIP_PLANE1 = 0x3001;
pub const GL_CLIP_PLANE2 = 0x3002;
pub const GL_CLIP_PLANE3 = 0x3003;
pub const GL_CLIP_PLANE4 = 0x3004;
pub const GL_CLIP_PLANE5 = 0x3005;
pub const GL_BYTE = 0x1400;
pub const GL_UNSIGNED_BYTE = 0x1401;
pub const GL_SHORT = 0x1402;
pub const GL_UNSIGNED_SHORT = 0x1403;
pub const GL_INT = 0x1404;
pub const GL_UNSIGNED_INT = 0x1405;
pub const GL_FLOAT = 0x1406;
pub const GL_2_BYTES = 0x1407;
pub const GL_3_BYTES = 0x1408;
pub const GL_4_BYTES = 0x1409;
pub const GL_DOUBLE = 0x140A;
pub const GL_NONE = 0;
pub const GL_FRONT_LEFT = 0x0400;
pub const GL_FRONT_RIGHT = 0x0401;
pub const GL_BACK_LEFT = 0x0402;
pub const GL_BACK_RIGHT = 0x0403;
pub const GL_FRONT = 0x0404;
pub const GL_BACK = 0x0405;
pub const GL_LEFT = 0x0406;
pub const GL_RIGHT = 0x0407;
pub const GL_FRONT_AND_BACK = 0x0408;
pub const GL_AUX0 = 0x0409;
pub const GL_AUX1 = 0x040A;
pub const GL_AUX2 = 0x040B;
pub const GL_AUX3 = 0x040C;
pub const GL_NO_ERROR = 0;
pub const GL_INVALID_ENUM = 0x0500;
pub const GL_INVALID_VALUE = 0x0501;
pub const GL_INVALID_OPERATION = 0x0502;
pub const GL_STACK_OVERFLOW = 0x0503;
pub const GL_STACK_UNDERFLOW = 0x0504;
pub const GL_OUT_OF_MEMORY = 0x0505;
pub const GL_2D = 0x0600;
pub const GL_3D = 0x0601;
pub const GL_3D_COLOR = 0x0602;
pub const GL_3D_COLOR_TEXTURE = 0x0603;
pub const GL_4D_COLOR_TEXTURE = 0x0604;
pub const GL_PASS_THROUGH_TOKEN = 0x0700;
pub const GL_POINT_TOKEN = 0x0701;
pub const GL_LINE_TOKEN = 0x0702;
pub const GL_POLYGON_TOKEN = 0x0703;
pub const GL_BITMAP_TOKEN = 0x0704;
pub const GL_DRAW_PIXEL_TOKEN = 0x0705;
pub const GL_COPY_PIXEL_TOKEN = 0x0706;
pub const GL_LINE_RESET_TOKEN = 0x0707;
pub const GL_EXP = 0x0800;
pub const GL_EXP2 = 0x0801;
pub const GL_CW = 0x0900;
pub const GL_CCW = 0x0901;
pub const GL_COEFF = 0x0A00;
pub const GL_ORDER = 0x0A01;
pub const GL_DOMAIN = 0x0A02;
pub const GL_CURRENT_COLOR = 0x0B00;
pub const GL_CURRENT_INDEX = 0x0B01;
pub const GL_CURRENT_NORMAL = 0x0B02;
pub const GL_CURRENT_TEXTURE_COORDS = 0x0B03;
pub const GL_CURRENT_RASTER_COLOR = 0x0B04;
pub const GL_CURRENT_RASTER_INDEX = 0x0B05;
pub const GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06;
pub const GL_CURRENT_RASTER_POSITION = 0x0B07;
pub const GL_CURRENT_RASTER_POSITION_VALID = 0x0B08;
pub const GL_CURRENT_RASTER_DISTANCE = 0x0B09;
pub const GL_POINT_SMOOTH = 0x0B10;
pub const GL_POINT_SIZE = 0x0B11;
pub const GL_POINT_SIZE_RANGE = 0x0B12;
pub const GL_POINT_SIZE_GRANULARITY = 0x0B13;
pub const GL_LINE_SMOOTH = 0x0B20;
pub const GL_LINE_WIDTH = 0x0B21;
pub const GL_LINE_WIDTH_RANGE = 0x0B22;
pub const GL_LINE_WIDTH_GRANULARITY = 0x0B23;
pub const GL_LINE_STIPPLE = 0x0B24;
pub const GL_LINE_STIPPLE_PATTERN = 0x0B25;
pub const GL_LINE_STIPPLE_REPEAT = 0x0B26;
pub const GL_LIST_MODE = 0x0B30;
pub const GL_MAX_LIST_NESTING = 0x0B31;
pub const GL_LIST_BASE = 0x0B32;
pub const GL_LIST_INDEX = 0x0B33;
pub const GL_POLYGON_MODE = 0x0B40;
pub const GL_POLYGON_SMOOTH = 0x0B41;
pub const GL_POLYGON_STIPPLE = 0x0B42;
pub const GL_EDGE_FLAG = 0x0B43;
pub const GL_CULL_FACE = 0x0B44;
pub const GL_CULL_FACE_MODE = 0x0B45;
pub const GL_FRONT_FACE = 0x0B46;
pub const GL_LIGHTING = 0x0B50;
pub const GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51;
pub const GL_LIGHT_MODEL_TWO_SIDE = 0x0B52;
pub const GL_LIGHT_MODEL_AMBIENT = 0x0B53;
pub const GL_SHADE_MODEL = 0x0B54;
pub const GL_COLOR_MATERIAL_FACE = 0x0B55;
pub const GL_COLOR_MATERIAL_PARAMETER = 0x0B56;
pub const GL_COLOR_MATERIAL = 0x0B57;
pub const GL_FOG = 0x0B60;
pub const GL_FOG_INDEX = 0x0B61;
pub const GL_FOG_DENSITY = 0x0B62;
pub const GL_FOG_START = 0x0B63;
pub const GL_FOG_END = 0x0B64;
pub const GL_FOG_MODE = 0x0B65;
pub const GL_FOG_COLOR = 0x0B66;
pub const GL_DEPTH_RANGE = 0x0B70;
pub const GL_DEPTH_TEST = 0x0B71;
pub const GL_DEPTH_WRITEMASK = 0x0B72;
pub const GL_DEPTH_CLEAR_VALUE = 0x0B73;
pub const GL_DEPTH_FUNC = 0x0B74;
pub const GL_ACCUM_CLEAR_VALUE = 0x0B80;
pub const GL_STENCIL_TEST = 0x0B90;
pub const GL_STENCIL_CLEAR_VALUE = 0x0B91;
pub const GL_STENCIL_FUNC = 0x0B92;
pub const GL_STENCIL_VALUE_MASK = 0x0B93;
pub const GL_STENCIL_FAIL = 0x0B94;
pub const GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95;
pub const GL_STENCIL_PASS_DEPTH_PASS = 0x0B96;
pub const GL_STENCIL_REF = 0x0B97;
pub const GL_STENCIL_WRITEMASK = 0x0B98;
pub const GL_MATRIX_MODE = 0x0BA0;
pub const GL_NORMALIZE = 0x0BA1;
pub const GL_VIEWPORT = 0x0BA2;
pub const GL_MODELVIEW_STACK_DEPTH = 0x0BA3;
pub const GL_PROJECTION_STACK_DEPTH = 0x0BA4;
pub const GL_TEXTURE_STACK_DEPTH = 0x0BA5;
pub const GL_MODELVIEW_MATRIX = 0x0BA6;
pub const GL_PROJECTION_MATRIX = 0x0BA7;
pub const GL_TEXTURE_MATRIX = 0x0BA8;
pub const GL_ATTRIB_STACK_DEPTH = 0x0BB0;
pub const GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1;
pub const GL_ALPHA_TEST = 0x0BC0;
pub const GL_ALPHA_TEST_FUNC = 0x0BC1;
pub const GL_ALPHA_TEST_REF = 0x0BC2;
pub const GL_DITHER = 0x0BD0;
pub const GL_BLEND_DST = 0x0BE0;
pub const GL_BLEND_SRC = 0x0BE1;
pub const GL_BLEND = 0x0BE2;
pub const GL_LOGIC_OP_MODE = 0x0BF0;
pub const GL_INDEX_LOGIC_OP = 0x0BF1;
pub const GL_COLOR_LOGIC_OP = 0x0BF2;
pub const GL_AUX_BUFFERS = 0x0C00;
pub const GL_DRAW_BUFFER = 0x0C01;
pub const GL_READ_BUFFER = 0x0C02;
pub const GL_SCISSOR_BOX = 0x0C10;
pub const GL_SCISSOR_TEST = 0x0C11;
pub const GL_INDEX_CLEAR_VALUE = 0x0C20;
pub const GL_INDEX_WRITEMASK = 0x0C21;
pub const GL_COLOR_CLEAR_VALUE = 0x0C22;
pub const GL_COLOR_WRITEMASK = 0x0C23;
pub const GL_INDEX_MODE = 0x0C30;
pub const GL_RGBA_MODE = 0x0C31;
pub const GL_DOUBLEBUFFER = 0x0C32;
pub const GL_STEREO = 0x0C33;
pub const GL_RENDER_MODE = 0x0C40;
pub const GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50;
pub const GL_POINT_SMOOTH_HINT = 0x0C51;
pub const GL_LINE_SMOOTH_HINT = 0x0C52;
pub const GL_POLYGON_SMOOTH_HINT = 0x0C53;
pub const GL_FOG_HINT = 0x0C54;
pub const GL_TEXTURE_GEN_S = 0x0C60;
pub const GL_TEXTURE_GEN_T = 0x0C61;
pub const GL_TEXTURE_GEN_R = 0x0C62;
pub const GL_TEXTURE_GEN_Q = 0x0C63;
pub const GL_PIXEL_MAP_I_TO_I = 0x0C70;
pub const GL_PIXEL_MAP_S_TO_S = 0x0C71;
pub const GL_PIXEL_MAP_I_TO_R = 0x0C72;
pub const GL_PIXEL_MAP_I_TO_G = 0x0C73;
pub const GL_PIXEL_MAP_I_TO_B = 0x0C74;
pub const GL_PIXEL_MAP_I_TO_A = 0x0C75;
pub const GL_PIXEL_MAP_R_TO_R = 0x0C76;
pub const GL_PIXEL_MAP_G_TO_G = 0x0C77;
pub const GL_PIXEL_MAP_B_TO_B = 0x0C78;
pub const GL_PIXEL_MAP_A_TO_A = 0x0C79;
pub const GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0;
pub const GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1;
pub const GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2;
pub const GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3;
pub const GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4;
pub const GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5;
pub const GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6;
pub const GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7;
pub const GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8;
pub const GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9;
pub const GL_UNPACK_SWAP_BYTES = 0x0CF0;
pub const GL_UNPACK_LSB_FIRST = 0x0CF1;
pub const GL_UNPACK_ROW_LENGTH = 0x0CF2;
pub const GL_UNPACK_SKIP_ROWS = 0x0CF3;
pub const GL_UNPACK_SKIP_PIXELS = 0x0CF4;
pub const GL_UNPACK_ALIGNMENT = 0x0CF5;
pub const GL_PACK_SWAP_BYTES = 0x0D00;
pub const GL_PACK_LSB_FIRST = 0x0D01;
pub const GL_PACK_ROW_LENGTH = 0x0D02;
pub const GL_PACK_SKIP_ROWS = 0x0D03;
pub const GL_PACK_SKIP_PIXELS = 0x0D04;
pub const GL_PACK_ALIGNMENT = 0x0D05;
pub const GL_MAP_COLOR = 0x0D10;
pub const GL_MAP_STENCIL = 0x0D11;
pub const GL_INDEX_SHIFT = 0x0D12;
pub const GL_INDEX_OFFSET = 0x0D13;
pub const GL_RED_SCALE = 0x0D14;
pub const GL_RED_BIAS = 0x0D15;
pub const GL_ZOOM_X = 0x0D16;
pub const GL_ZOOM_Y = 0x0D17;
pub const GL_GREEN_SCALE = 0x0D18;
pub const GL_GREEN_BIAS = 0x0D19;
pub const GL_BLUE_SCALE = 0x0D1A;
pub const GL_BLUE_BIAS = 0x0D1B;
pub const GL_ALPHA_SCALE = 0x0D1C;
pub const GL_ALPHA_BIAS = 0x0D1D;
pub const GL_DEPTH_SCALE = 0x0D1E;
pub const GL_DEPTH_BIAS = 0x0D1F;
pub const GL_MAX_EVAL_ORDER = 0x0D30;
pub const GL_MAX_LIGHTS = 0x0D31;
pub const GL_MAX_CLIP_PLANES = 0x0D32;
pub const GL_MAX_TEXTURE_SIZE = 0x0D33;
pub const GL_MAX_PIXEL_MAP_TABLE = 0x0D34;
pub const GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35;
pub const GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36;
pub const GL_MAX_NAME_STACK_DEPTH = 0x0D37;
pub const GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38;
pub const GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39;
pub const GL_MAX_VIEWPORT_DIMS = 0x0D3A;
pub const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B;
pub const GL_SUBPIXEL_BITS = 0x0D50;
pub const GL_INDEX_BITS = 0x0D51;
pub const GL_RED_BITS = 0x0D52;
pub const GL_GREEN_BITS = 0x0D53;
pub const GL_BLUE_BITS = 0x0D54;
pub const GL_ALPHA_BITS = 0x0D55;
pub const GL_DEPTH_BITS = 0x0D56;
pub const GL_STENCIL_BITS = 0x0D57;
pub const GL_ACCUM_RED_BITS = 0x0D58;
pub const GL_ACCUM_GREEN_BITS = 0x0D59;
pub const GL_ACCUM_BLUE_BITS = 0x0D5A;
pub const GL_ACCUM_ALPHA_BITS = 0x0D5B;
pub const GL_NAME_STACK_DEPTH = 0x0D70;
pub const GL_AUTO_NORMAL = 0x0D80;
pub const GL_MAP1_COLOR_4 = 0x0D90;
pub const GL_MAP1_INDEX = 0x0D91;
pub const GL_MAP1_NORMAL = 0x0D92;
pub const GL_MAP1_TEXTURE_COORD_1 = 0x0D93;
pub const GL_MAP1_TEXTURE_COORD_2 = 0x0D94;
pub const GL_MAP1_TEXTURE_COORD_3 = 0x0D95;
pub const GL_MAP1_TEXTURE_COORD_4 = 0x0D96;
pub const GL_MAP1_VERTEX_3 = 0x0D97;
pub const GL_MAP1_VERTEX_4 = 0x0D98;
pub const GL_MAP2_COLOR_4 = 0x0DB0;
pub const GL_MAP2_INDEX = 0x0DB1;
pub const GL_MAP2_NORMAL = 0x0DB2;
pub const GL_MAP2_TEXTURE_COORD_1 = 0x0DB3;
pub const GL_MAP2_TEXTURE_COORD_2 = 0x0DB4;
pub const GL_MAP2_TEXTURE_COORD_3 = 0x0DB5;
pub const GL_MAP2_TEXTURE_COORD_4 = 0x0DB6;
pub const GL_MAP2_VERTEX_3 = 0x0DB7;
pub const GL_MAP2_VERTEX_4 = 0x0DB8;
pub const GL_MAP1_GRID_DOMAIN = 0x0DD0;
pub const GL_MAP1_GRID_SEGMENTS = 0x0DD1;
pub const GL_MAP2_GRID_DOMAIN = 0x0DD2;
pub const GL_MAP2_GRID_SEGMENTS = 0x0DD3;
pub const GL_TEXTURE_1D = 0x0DE0;
pub const GL_TEXTURE_2D = 0x0DE1;
pub const GL_FEEDBACK_BUFFER_POINTER = 0x0DF0;
pub const GL_FEEDBACK_BUFFER_SIZE = 0x0DF1;
pub const GL_FEEDBACK_BUFFER_TYPE = 0x0DF2;
pub const GL_SELECTION_BUFFER_POINTER = 0x0DF3;
pub const GL_SELECTION_BUFFER_SIZE = 0x0DF4;
pub const GL_TEXTURE_WIDTH = 0x1000;
pub const GL_TEXTURE_HEIGHT = 0x1001;
pub const GL_TEXTURE_INTERNAL_FORMAT = 0x1003;
pub const GL_TEXTURE_BORDER_COLOR = 0x1004;
pub const GL_TEXTURE_BORDER = 0x1005;
pub const GL_DONT_CARE = 0x1100;
pub const GL_FASTEST = 0x1101;
pub const GL_NICEST = 0x1102;
pub const GL_LIGHT0 = 0x4000;
pub const GL_LIGHT1 = 0x4001;
pub const GL_LIGHT2 = 0x4002;
pub const GL_LIGHT3 = 0x4003;
pub const GL_LIGHT4 = 0x4004;
pub const GL_LIGHT5 = 0x4005;
pub const GL_LIGHT6 = 0x4006;
pub const GL_LIGHT7 = 0x4007;
pub const GL_AMBIENT = 0x1200;
pub const GL_DIFFUSE = 0x1201;
pub const GL_SPECULAR = 0x1202;
pub const GL_POSITION = 0x1203;
pub const GL_SPOT_DIRECTION = 0x1204;
pub const GL_SPOT_EXPONENT = 0x1205;
pub const GL_SPOT_CUTOFF = 0x1206;
pub const GL_CONSTANT_ATTENUATION = 0x1207;
pub const GL_LINEAR_ATTENUATION = 0x1208;
pub const GL_QUADRATIC_ATTENUATION = 0x1209;
pub const GL_COMPILE = 0x1300;
pub const GL_COMPILE_AND_EXECUTE = 0x1301;
pub const GL_CLEAR = 0x1500;
pub const GL_AND = 0x1501;
pub const GL_AND_REVERSE = 0x1502;
pub const GL_COPY = 0x1503;
pub const GL_AND_INVERTED = 0x1504;
pub const GL_NOOP = 0x1505;
pub const GL_XOR = 0x1506;
pub const GL_OR = 0x1507;
pub const GL_NOR = 0x1508;
pub const GL_EQUIV = 0x1509;
pub const GL_INVERT = 0x150A;
pub const GL_OR_REVERSE = 0x150B;
pub const GL_COPY_INVERTED = 0x150C;
pub const GL_OR_INVERTED = 0x150D;
pub const GL_NAND = 0x150E;
pub const GL_SET = 0x150F;
pub const GL_EMISSION = 0x1600;
pub const GL_SHININESS = 0x1601;
pub const GL_AMBIENT_AND_DIFFUSE = 0x1602;
pub const GL_COLOR_INDEXES = 0x1603;
pub const GL_MODELVIEW = 0x1700;
pub const GL_PROJECTION = 0x1701;
pub const GL_TEXTURE = 0x1702;
pub const GL_COLOR = 0x1800;
pub const GL_DEPTH = 0x1801;
pub const GL_STENCIL = 0x1802;
pub const GL_COLOR_INDEX = 0x1900;
pub const GL_STENCIL_INDEX = 0x1901;
pub const GL_DEPTH_COMPONENT = 0x1902;
pub const GL_RED = 0x1903;
pub const GL_GREEN = 0x1904;
pub const GL_BLUE = 0x1905;
pub const GL_ALPHA = 0x1906;
pub const GL_RGB = 0x1907;
pub const GL_RGBA = 0x1908;
pub const GL_LUMINANCE = 0x1909;
pub const GL_LUMINANCE_ALPHA = 0x190A;
pub const GL_BITMAP = 0x1A00;
pub const GL_POINT = 0x1B00;
pub const GL_LINE = 0x1B01;
pub const GL_FILL = 0x1B02;
pub const GL_RENDER = 0x1C00;
pub const GL_FEEDBACK = 0x1C01;
pub const GL_SELECT = 0x1C02;
pub const GL_FLAT = 0x1D00;
pub const GL_SMOOTH = 0x1D01;
pub const GL_KEEP = 0x1E00;
pub const GL_REPLACE = 0x1E01;
pub const GL_INCR = 0x1E02;
pub const GL_DECR = 0x1E03;
pub const GL_VENDOR = 0x1F00;
pub const GL_RENDERER = 0x1F01;
pub const GL_VERSION = 0x1F02;
pub const GL_EXTENSIONS = 0x1F03;
pub const GL_S = 0x2000;
pub const GL_T = 0x2001;
pub const GL_R = 0x2002;
pub const GL_Q = 0x2003;
pub const GL_MODULATE = 0x2100;
pub const GL_DECAL = 0x2101;
pub const GL_TEXTURE_ENV_MODE = 0x2200;
pub const GL_TEXTURE_ENV_COLOR = 0x2201;
pub const GL_TEXTURE_ENV = 0x2300;
pub const GL_EYE_LINEAR = 0x2400;
pub const GL_OBJECT_LINEAR = 0x2401;
pub const GL_SPHERE_MAP = 0x2402;
pub const GL_TEXTURE_GEN_MODE = 0x2500;
pub const GL_OBJECT_PLANE = 0x2501;
pub const GL_EYE_PLANE = 0x2502;
pub const GL_NEAREST = 0x2600;
pub const GL_LINEAR = 0x2601;
pub const GL_NEAREST_MIPMAP_NEAREST = 0x2700;
pub const GL_LINEAR_MIPMAP_NEAREST = 0x2701;
pub const GL_NEAREST_MIPMAP_LINEAR = 0x2702;
pub const GL_LINEAR_MIPMAP_LINEAR = 0x2703;
pub const GL_TEXTURE_MAG_FILTER = 0x2800;
pub const GL_TEXTURE_MIN_FILTER = 0x2801;
pub const GL_TEXTURE_WRAP_S = 0x2802;
pub const GL_TEXTURE_WRAP_T = 0x2803;
pub const GL_CLAMP = 0x2900;
pub const GL_REPEAT = 0x2901;
pub const GL_CLIENT_PIXEL_STORE_BIT = 0x00000001;
pub const GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002;
pub const GL_CLIENT_ALL_ATTRIB_BITS = 0xffffffff;
pub const GL_POLYGON_OFFSET_FACTOR = 0x8038;
pub const GL_POLYGON_OFFSET_UNITS = 0x2A00;
pub const GL_POLYGON_OFFSET_POINT = 0x2A01;
pub const GL_POLYGON_OFFSET_LINE = 0x2A02;
pub const GL_POLYGON_OFFSET_FILL = 0x8037;
pub const GL_ALPHA4 = 0x803B;
pub const GL_ALPHA8 = 0x803C;
pub const GL_ALPHA12 = 0x803D;
pub const GL_ALPHA16 = 0x803E;
pub const GL_LUMINANCE4 = 0x803F;
pub const GL_LUMINANCE8 = 0x8040;
pub const GL_LUMINANCE12 = 0x8041;
pub const GL_LUMINANCE16 = 0x8042;
pub const GL_LUMINANCE4_ALPHA4 = 0x8043;
pub const GL_LUMINANCE6_ALPHA2 = 0x8044;
pub const GL_LUMINANCE8_ALPHA8 = 0x8045;
pub const GL_LUMINANCE12_ALPHA4 = 0x8046;
pub const GL_LUMINANCE12_ALPHA12 = 0x8047;
pub const GL_LUMINANCE16_ALPHA16 = 0x8048;
pub const GL_INTENSITY = 0x8049;
pub const GL_INTENSITY4 = 0x804A;
pub const GL_INTENSITY8 = 0x804B;
pub const GL_INTENSITY12 = 0x804C;
pub const GL_INTENSITY16 = 0x804D;
pub const GL_R3_G3_B2 = 0x2A10;
pub const GL_RGB4 = 0x804F;
pub const GL_RGB5 = 0x8050;
pub const GL_RGB8 = 0x8051;
pub const GL_RGB10 = 0x8052;
pub const GL_RGB12 = 0x8053;
pub const GL_RGB16 = 0x8054;
pub const GL_RGBA2 = 0x8055;
pub const GL_RGBA4 = 0x8056;
pub const GL_RGB5_A1 = 0x8057;
pub const GL_RGBA8 = 0x8058;
pub const GL_RGB10_A2 = 0x8059;
pub const GL_RGBA12 = 0x805A;
pub const GL_RGBA16 = 0x805B;
pub const GL_TEXTURE_RED_SIZE = 0x805C;
pub const GL_TEXTURE_GREEN_SIZE = 0x805D;
pub const GL_TEXTURE_BLUE_SIZE = 0x805E;
pub const GL_TEXTURE_ALPHA_SIZE = 0x805F;
pub const GL_TEXTURE_LUMINANCE_SIZE = 0x8060;
pub const GL_TEXTURE_INTENSITY_SIZE = 0x8061;
pub const GL_PROXY_TEXTURE_1D = 0x8063;
pub const GL_PROXY_TEXTURE_2D = 0x8064;
pub const GL_TEXTURE_PRIORITY = 0x8066;
pub const GL_TEXTURE_RESIDENT = 0x8067;
pub const GL_TEXTURE_BINDING_1D = 0x8068;
pub const GL_TEXTURE_BINDING_2D = 0x8069;
pub const GL_VERTEX_ARRAY = 0x8074;
pub const GL_NORMAL_ARRAY = 0x8075;
pub const GL_COLOR_ARRAY = 0x8076;
pub const GL_INDEX_ARRAY = 0x8077;
pub const GL_TEXTURE_COORD_ARRAY = 0x8078;
pub const GL_EDGE_FLAG_ARRAY = 0x8079;
pub const GL_VERTEX_ARRAY_SIZE = 0x807A;
pub const GL_VERTEX_ARRAY_TYPE = 0x807B;
pub const GL_VERTEX_ARRAY_STRIDE = 0x807C;
pub const GL_NORMAL_ARRAY_TYPE = 0x807E;
pub const GL_NORMAL_ARRAY_STRIDE = 0x807F;
pub const GL_COLOR_ARRAY_SIZE = 0x8081;
pub const GL_COLOR_ARRAY_TYPE = 0x8082;
pub const GL_COLOR_ARRAY_STRIDE = 0x8083;
pub const GL_INDEX_ARRAY_TYPE = 0x8085;
pub const GL_INDEX_ARRAY_STRIDE = 0x8086;
pub const GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088;
pub const GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089;
pub const GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A;
pub const GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C;
pub const GL_VERTEX_ARRAY_POINTER = 0x808E;
pub const GL_NORMAL_ARRAY_POINTER = 0x808F;
pub const GL_COLOR_ARRAY_POINTER = 0x8090;
pub const GL_INDEX_ARRAY_POINTER = 0x8091;
pub const GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092;
pub const GL_EDGE_FLAG_ARRAY_POINTER = 0x8093;
pub const GL_V2F = 0x2A20;
pub const GL_V3F = 0x2A21;
pub const GL_C4UB_V2F = 0x2A22;
pub const GL_C4UB_V3F = 0x2A23;
pub const GL_C3F_V3F = 0x2A24;
pub const GL_N3F_V3F = 0x2A25;
pub const GL_C4F_N3F_V3F = 0x2A26;
pub const GL_T2F_V3F = 0x2A27;
pub const GL_T4F_V4F = 0x2A28;
pub const GL_T2F_C4UB_V3F = 0x2A29;
pub const GL_T2F_C3F_V3F = 0x2A2A;
pub const GL_T2F_N3F_V3F = 0x2A2B;
pub const GL_T2F_C4F_N3F_V3F = 0x2A2C;
pub const GL_T4F_C4F_N3F_V4F = 0x2A2D;
pub const GL_EXT_vertex_array = 1;
pub const GL_EXT_bgra = 1;
pub const GL_EXT_paletted_texture = 1;
pub const GL_WIN_swap_hint = 1;
pub const GL_WIN_draw_range_elements = 1;
pub const GL_VERTEX_ARRAY_EXT = 0x8074;
pub const GL_NORMAL_ARRAY_EXT = 0x8075;
pub const GL_COLOR_ARRAY_EXT = 0x8076;
pub const GL_INDEX_ARRAY_EXT = 0x8077;
pub const GL_TEXTURE_COORD_ARRAY_EXT = 0x8078;
pub const GL_EDGE_FLAG_ARRAY_EXT = 0x8079;
pub const GL_VERTEX_ARRAY_SIZE_EXT = 0x807A;
pub const GL_VERTEX_ARRAY_TYPE_EXT = 0x807B;
pub const GL_VERTEX_ARRAY_STRIDE_EXT = 0x807C;
pub const GL_VERTEX_ARRAY_COUNT_EXT = 0x807D;
pub const GL_NORMAL_ARRAY_TYPE_EXT = 0x807E;
pub const GL_NORMAL_ARRAY_STRIDE_EXT = 0x807F;
pub const GL_NORMAL_ARRAY_COUNT_EXT = 0x8080;
pub const GL_COLOR_ARRAY_SIZE_EXT = 0x8081;
pub const GL_COLOR_ARRAY_TYPE_EXT = 0x8082;
pub const GL_COLOR_ARRAY_STRIDE_EXT = 0x8083;
pub const GL_COLOR_ARRAY_COUNT_EXT = 0x8084;
pub const GL_INDEX_ARRAY_TYPE_EXT = 0x8085;
pub const GL_INDEX_ARRAY_STRIDE_EXT = 0x8086;
pub const GL_INDEX_ARRAY_COUNT_EXT = 0x8087;
pub const GL_TEXTURE_COORD_ARRAY_SIZE_EXT = 0x8088;
pub const GL_TEXTURE_COORD_ARRAY_TYPE_EXT = 0x8089;
pub const GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A;
pub const GL_TEXTURE_COORD_ARRAY_COUNT_EXT = 0x808B;
pub const GL_EDGE_FLAG_ARRAY_STRIDE_EXT = 0x808C;
pub const GL_EDGE_FLAG_ARRAY_COUNT_EXT = 0x808D;
pub const GL_VERTEX_ARRAY_POINTER_EXT = 0x808E;
pub const GL_NORMAL_ARRAY_POINTER_EXT = 0x808F;
pub const GL_COLOR_ARRAY_POINTER_EXT = 0x8090;
pub const GL_INDEX_ARRAY_POINTER_EXT = 0x8091;
pub const GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092;
pub const GL_EDGE_FLAG_ARRAY_POINTER_EXT = 0x8093;
pub const GL_DOUBLE_EXT = GL_DOUBLE;
pub const GL_BGR_EXT = 0x80E0;
pub const GL_BGRA_EXT = 0x80E1;
pub const GL_COLOR_TABLE_FORMAT_EXT = 0x80D8;
pub const GL_COLOR_TABLE_WIDTH_EXT = 0x80D9;
pub const GL_COLOR_TABLE_RED_SIZE_EXT = 0x80DA;
pub const GL_COLOR_TABLE_GREEN_SIZE_EXT = 0x80DB;
pub const GL_COLOR_TABLE_BLUE_SIZE_EXT = 0x80DC;
pub const GL_COLOR_TABLE_ALPHA_SIZE_EXT = 0x80DD;
pub const GL_COLOR_TABLE_LUMINANCE_SIZE_EXT = 0x80DE;
pub const GL_COLOR_TABLE_INTENSITY_SIZE_EXT = 0x80DF;
pub const GL_COLOR_INDEX1_EXT = 0x80E2;
pub const GL_COLOR_INDEX2_EXT = 0x80E3;
pub const GL_COLOR_INDEX4_EXT = 0x80E4;
pub const GL_COLOR_INDEX8_EXT = 0x80E5;
pub const GL_COLOR_INDEX12_EXT = 0x80E6;
pub const GL_COLOR_INDEX16_EXT = 0x80E7;
pub const GL_MAX_ELEMENTS_VERTICES_WIN = 0x80E8;
pub const GL_MAX_ELEMENTS_INDICES_WIN = 0x80E9;
pub const GL_PHONG_WIN = 0x80EA;
pub const GL_PHONG_HINT_WIN = 0x80EB;
pub const GL_FOG_SPECULAR_TEXTURE_WIN = 0x80EC;
pub const GL_LOGIC_OP = GL_INDEX_LOGIC_OP;
pub const GL_TEXTURE_COMPONENTS = GL_TEXTURE_INTERNAL_FORMAT;
pub const GLFW_VERSION_MAJOR = 3;
pub const GLFW_VERSION_MINOR = 3;
pub const GLFW_VERSION_REVISION = 2;
pub const GLFW_TRUE = 1;
pub const GLFW_FALSE = 0;
pub const GLFW_RELEASE = 0;
pub const GLFW_PRESS = 1;
pub const GLFW_REPEAT = 2;
pub const GLFW_HAT_CENTERED = 0;
pub const GLFW_HAT_UP = 1;
pub const GLFW_HAT_RIGHT = 2;
pub const GLFW_HAT_DOWN = 4;
pub const GLFW_HAT_LEFT = 8;
pub const GLFW_HAT_RIGHT_UP = GLFW_HAT_RIGHT | GLFW_HAT_UP;
pub const GLFW_HAT_RIGHT_DOWN = GLFW_HAT_RIGHT | GLFW_HAT_DOWN;
pub const GLFW_HAT_LEFT_UP = GLFW_HAT_LEFT | GLFW_HAT_UP;
pub const GLFW_HAT_LEFT_DOWN = GLFW_HAT_LEFT | GLFW_HAT_DOWN;
pub const GLFW_KEY_UNKNOWN = -1;
pub const GLFW_KEY_SPACE = 32;
pub const GLFW_KEY_APOSTROPHE = 39;
pub const GLFW_KEY_COMMA = 44;
pub const GLFW_KEY_MINUS = 45;
pub const GLFW_KEY_PERIOD = 46;
pub const GLFW_KEY_SLASH = 47;
pub const GLFW_KEY_0 = 48;
pub const GLFW_KEY_1 = 49;
pub const GLFW_KEY_2 = 50;
pub const GLFW_KEY_3 = 51;
pub const GLFW_KEY_4 = 52;
pub const GLFW_KEY_5 = 53;
pub const GLFW_KEY_6 = 54;
pub const GLFW_KEY_7 = 55;
pub const GLFW_KEY_8 = 56;
pub const GLFW_KEY_9 = 57;
pub const GLFW_KEY_SEMICOLON = 59;
pub const GLFW_KEY_EQUAL = 61;
pub const GLFW_KEY_A = 65;
pub const GLFW_KEY_B = 66;
pub const GLFW_KEY_C = 67;
pub const GLFW_KEY_D = 68;
pub const GLFW_KEY_E = 69;
pub const GLFW_KEY_F = 70;
pub const GLFW_KEY_G = 71;
pub const GLFW_KEY_H = 72;
pub const GLFW_KEY_I = 73;
pub const GLFW_KEY_J = 74;
pub const GLFW_KEY_K = 75;
pub const GLFW_KEY_L = 76;
pub const GLFW_KEY_M = 77;
pub const GLFW_KEY_N = 78;
pub const GLFW_KEY_O = 79;
pub const GLFW_KEY_P = 80;
pub const GLFW_KEY_Q = 81;
pub const GLFW_KEY_R = 82;
pub const GLFW_KEY_S = 83;
pub const GLFW_KEY_T = 84;
pub const GLFW_KEY_U = 85;
pub const GLFW_KEY_V = 86;
pub const GLFW_KEY_W = 87;
pub const GLFW_KEY_X = 88;
pub const GLFW_KEY_Y = 89;
pub const GLFW_KEY_Z = 90;
pub const GLFW_KEY_LEFT_BRACKET = 91;
pub const GLFW_KEY_BACKSLASH = 92;
pub const GLFW_KEY_RIGHT_BRACKET = 93;
pub const GLFW_KEY_GRAVE_ACCENT = 96;
pub const GLFW_KEY_WORLD_1 = 161;
pub const GLFW_KEY_WORLD_2 = 162;
pub const GLFW_KEY_ESCAPE = 256;
pub const GLFW_KEY_ENTER = 257;
pub const GLFW_KEY_TAB = 258;
pub const GLFW_KEY_BACKSPACE = 259;
pub const GLFW_KEY_INSERT = 260;
pub const GLFW_KEY_DELETE = 261;
pub const GLFW_KEY_RIGHT = 262;
pub const GLFW_KEY_LEFT = 263;
pub const GLFW_KEY_DOWN = 264;
pub const GLFW_KEY_UP = 265;
pub const GLFW_KEY_PAGE_UP = 266;
pub const GLFW_KEY_PAGE_DOWN = 267;
pub const GLFW_KEY_HOME = 268;
pub const GLFW_KEY_END = 269;
pub const GLFW_KEY_CAPS_LOCK = 280;
pub const GLFW_KEY_SCROLL_LOCK = 281;
pub const GLFW_KEY_NUM_LOCK = 282;
pub const GLFW_KEY_PRINT_SCREEN = 283;
pub const GLFW_KEY_PAUSE = 284;
pub const GLFW_KEY_F1 = 290;
pub const GLFW_KEY_F2 = 291;
pub const GLFW_KEY_F3 = 292;
pub const GLFW_KEY_F4 = 293;
pub const GLFW_KEY_F5 = 294;
pub const GLFW_KEY_F6 = 295;
pub const GLFW_KEY_F7 = 296;
pub const GLFW_KEY_F8 = 297;
pub const GLFW_KEY_F9 = 298;
pub const GLFW_KEY_F10 = 299;
pub const GLFW_KEY_F11 = 300;
pub const GLFW_KEY_F12 = 301;
pub const GLFW_KEY_F13 = 302;
pub const GLFW_KEY_F14 = 303;
pub const GLFW_KEY_F15 = 304;
pub const GLFW_KEY_F16 = 305;
pub const GLFW_KEY_F17 = 306;
pub const GLFW_KEY_F18 = 307;
pub const GLFW_KEY_F19 = 308;
pub const GLFW_KEY_F20 = 309;
pub const GLFW_KEY_F21 = 310;
pub const GLFW_KEY_F22 = 311;
pub const GLFW_KEY_F23 = 312;
pub const GLFW_KEY_F24 = 313;
pub const GLFW_KEY_F25 = 314;
pub const GLFW_KEY_KP_0 = 320;
pub const GLFW_KEY_KP_1 = 321;
pub const GLFW_KEY_KP_2 = 322;
pub const GLFW_KEY_KP_3 = 323;
pub const GLFW_KEY_KP_4 = 324;
pub const GLFW_KEY_KP_5 = 325;
pub const GLFW_KEY_KP_6 = 326;
pub const GLFW_KEY_KP_7 = 327;
pub const GLFW_KEY_KP_8 = 328;
pub const GLFW_KEY_KP_9 = 329;
pub const GLFW_KEY_KP_DECIMAL = 330;
pub const GLFW_KEY_KP_DIVIDE = 331;
pub const GLFW_KEY_KP_MULTIPLY = 332;
pub const GLFW_KEY_KP_SUBTRACT = 333;
pub const GLFW_KEY_KP_ADD = 334;
pub const GLFW_KEY_KP_ENTER = 335;
pub const GLFW_KEY_KP_EQUAL = 336;
pub const GLFW_KEY_LEFT_SHIFT = 340;
pub const GLFW_KEY_LEFT_CONTROL = 341;
pub const GLFW_KEY_LEFT_ALT = 342;
pub const GLFW_KEY_LEFT_SUPER = 343;
pub const GLFW_KEY_RIGHT_SHIFT = 344;
pub const GLFW_KEY_RIGHT_CONTROL = 345;
pub const GLFW_KEY_RIGHT_ALT = 346;
pub const GLFW_KEY_RIGHT_SUPER = 347;
pub const GLFW_KEY_MENU = 348;
pub const GLFW_KEY_LAST = GLFW_KEY_MENU;
pub const GLFW_MOD_SHIFT = 0x0001;
pub const GLFW_MOD_CONTROL = 0x0002;
pub const GLFW_MOD_ALT = 0x0004;
pub const GLFW_MOD_SUPER = 0x0008;
pub const GLFW_MOD_CAPS_LOCK = 0x0010;
pub const GLFW_MOD_NUM_LOCK = 0x0020;
pub const GLFW_MOUSE_BUTTON_1 = 0;
pub const GLFW_MOUSE_BUTTON_2 = 1;
pub const GLFW_MOUSE_BUTTON_3 = 2;
pub const GLFW_MOUSE_BUTTON_4 = 3;
pub const GLFW_MOUSE_BUTTON_5 = 4;
pub const GLFW_MOUSE_BUTTON_6 = 5;
pub const GLFW_MOUSE_BUTTON_7 = 6;
pub const GLFW_MOUSE_BUTTON_8 = 7;
pub const GLFW_MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_8;
pub const GLFW_MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_1;
pub const GLFW_MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_2;
pub const GLFW_MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_3;
pub const GLFW_JOYSTICK_1 = 0;
pub const GLFW_JOYSTICK_2 = 1;
pub const GLFW_JOYSTICK_3 = 2;
pub const GLFW_JOYSTICK_4 = 3;
pub const GLFW_JOYSTICK_5 = 4;
pub const GLFW_JOYSTICK_6 = 5;
pub const GLFW_JOYSTICK_7 = 6;
pub const GLFW_JOYSTICK_8 = 7;
pub const GLFW_JOYSTICK_9 = 8;
pub const GLFW_JOYSTICK_10 = 9;
pub const GLFW_JOYSTICK_11 = 10;
pub const GLFW_JOYSTICK_12 = 11;
pub const GLFW_JOYSTICK_13 = 12;
pub const GLFW_JOYSTICK_14 = 13;
pub const GLFW_JOYSTICK_15 = 14;
pub const GLFW_JOYSTICK_16 = 15;
pub const GLFW_JOYSTICK_LAST = GLFW_JOYSTICK_16;
pub const GLFW_GAMEPAD_BUTTON_A = 0;
pub const GLFW_GAMEPAD_BUTTON_B = 1;
pub const GLFW_GAMEPAD_BUTTON_X = 2;
pub const GLFW_GAMEPAD_BUTTON_Y = 3;
pub const GLFW_GAMEPAD_BUTTON_LEFT_BUMPER = 4;
pub const GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER = 5;
pub const GLFW_GAMEPAD_BUTTON_BACK = 6;
pub const GLFW_GAMEPAD_BUTTON_START = 7;
pub const GLFW_GAMEPAD_BUTTON_GUIDE = 8;
pub const GLFW_GAMEPAD_BUTTON_LEFT_THUMB = 9;
pub const GLFW_GAMEPAD_BUTTON_RIGHT_THUMB = 10;
pub const GLFW_GAMEPAD_BUTTON_DPAD_UP = 11;
pub const GLFW_GAMEPAD_BUTTON_DPAD_RIGHT = 12;
pub const GLFW_GAMEPAD_BUTTON_DPAD_DOWN = 13;
pub const GLFW_GAMEPAD_BUTTON_DPAD_LEFT = 14;
pub const GLFW_GAMEPAD_BUTTON_LAST = GLFW_GAMEPAD_BUTTON_DPAD_LEFT;
pub const GLFW_GAMEPAD_BUTTON_CROSS = GLFW_GAMEPAD_BUTTON_A;
pub const GLFW_GAMEPAD_BUTTON_CIRCLE = GLFW_GAMEPAD_BUTTON_B;
pub const GLFW_GAMEPAD_BUTTON_SQUARE = GLFW_GAMEPAD_BUTTON_X;
pub const GLFW_GAMEPAD_BUTTON_TRIANGLE = GLFW_GAMEPAD_BUTTON_Y;
pub const GLFW_GAMEPAD_AXIS_LEFT_X = 0;
pub const GLFW_GAMEPAD_AXIS_LEFT_Y = 1;
pub const GLFW_GAMEPAD_AXIS_RIGHT_X = 2;
pub const GLFW_GAMEPAD_AXIS_RIGHT_Y = 3;
pub const GLFW_GAMEPAD_AXIS_LEFT_TRIGGER = 4;
pub const GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER = 5;
pub const GLFW_GAMEPAD_AXIS_LAST = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER;
pub const GLFW_NO_ERROR = 0;
pub const GLFW_NOT_INITIALIZED = 0x00010001;
pub const GLFW_NO_CURRENT_CONTEXT = 0x00010002;
pub const GLFW_INVALID_ENUM = 0x00010003;
pub const GLFW_INVALID_VALUE = 0x00010004;
pub const GLFW_OUT_OF_MEMORY = 0x00010005;
pub const GLFW_API_UNAVAILABLE = 0x00010006;
pub const GLFW_VERSION_UNAVAILABLE = 0x00010007;
pub const GLFW_PLATFORM_ERROR = 0x00010008;
pub const GLFW_FORMAT_UNAVAILABLE = 0x00010009;
pub const GLFW_NO_WINDOW_CONTEXT = 0x0001000A;
pub const GLFW_FOCUSED = 0x00020001;
pub const GLFW_ICONIFIED = 0x00020002;
pub const GLFW_RESIZABLE = 0x00020003;
pub const GLFW_VISIBLE = 0x00020004;
pub const GLFW_DECORATED = 0x00020005;
pub const GLFW_AUTO_ICONIFY = 0x00020006;
pub const GLFW_FLOATING = 0x00020007;
pub const GLFW_MAXIMIZED = 0x00020008;
pub const GLFW_CENTER_CURSOR = 0x00020009;
pub const GLFW_TRANSPARENT_FRAMEBUFFER = 0x0002000A;
pub const GLFW_HOVERED = 0x0002000B;
pub const GLFW_FOCUS_ON_SHOW = 0x0002000C;
pub const GLFW_RED_BITS = 0x00021001;
pub const GLFW_GREEN_BITS = 0x00021002;
pub const GLFW_BLUE_BITS = 0x00021003;
pub const GLFW_ALPHA_BITS = 0x00021004;
pub const GLFW_DEPTH_BITS = 0x00021005;
pub const GLFW_STENCIL_BITS = 0x00021006;
pub const GLFW_ACCUM_RED_BITS = 0x00021007;
pub const GLFW_ACCUM_GREEN_BITS = 0x00021008;
pub const GLFW_ACCUM_BLUE_BITS = 0x00021009;
pub const GLFW_ACCUM_ALPHA_BITS = 0x0002100A;
pub const GLFW_AUX_BUFFERS = 0x0002100B;
pub const GLFW_STEREO = 0x0002100C;
pub const GLFW_SAMPLES = 0x0002100D;
pub const GLFW_SRGB_CAPABLE = 0x0002100E;
pub const GLFW_REFRESH_RATE = 0x0002100F;
pub const GLFW_DOUBLEBUFFER = 0x00021010;
pub const GLFW_CLIENT_API = 0x00022001;
pub const GLFW_CONTEXT_VERSION_MAJOR = 0x00022002;
pub const GLFW_CONTEXT_VERSION_MINOR = 0x00022003;
pub const GLFW_CONTEXT_REVISION = 0x00022004;
pub const GLFW_CONTEXT_ROBUSTNESS = 0x00022005;
pub const GLFW_OPENGL_FORWARD_COMPAT = 0x00022006;
pub const GLFW_OPENGL_DEBUG_CONTEXT = 0x00022007;
pub const GLFW_OPENGL_PROFILE = 0x00022008;
pub const GLFW_CONTEXT_RELEASE_BEHAVIOR = 0x00022009;
pub const GLFW_CONTEXT_NO_ERROR = 0x0002200A;
pub const GLFW_CONTEXT_CREATION_API = 0x0002200B;
pub const GLFW_SCALE_TO_MONITOR = 0x0002200C;
pub const GLFW_COCOA_RETINA_FRAMEBUFFER = 0x00023001;
pub const GLFW_COCOA_FRAME_NAME = 0x00023002;
pub const GLFW_COCOA_GRAPHICS_SWITCHING = 0x00023003;
pub const GLFW_X11_CLASS_NAME = 0x00024001;
pub const GLFW_X11_INSTANCE_NAME = 0x00024002;
pub const GLFW_NO_API = 0;
pub const GLFW_OPENGL_API = 0x00030001;
pub const GLFW_OPENGL_ES_API = 0x00030002;
pub const GLFW_NO_ROBUSTNESS = 0;
pub const GLFW_NO_RESET_NOTIFICATION = 0x00031001;
pub const GLFW_LOSE_CONTEXT_ON_RESET = 0x00031002;
pub const GLFW_OPENGL_ANY_PROFILE = 0;
pub const GLFW_OPENGL_CORE_PROFILE = 0x00032001;
pub const GLFW_OPENGL_COMPAT_PROFILE = 0x00032002;
pub const GLFW_CURSOR = 0x00033001;
pub const GLFW_STICKY_KEYS = 0x00033002;
pub const GLFW_STICKY_MOUSE_BUTTONS = 0x00033003;
pub const GLFW_LOCK_KEY_MODS = 0x00033004;
pub const GLFW_RAW_MOUSE_MOTION = 0x00033005;
pub const GLFW_CURSOR_NORMAL = 0x00034001;
pub const GLFW_CURSOR_HIDDEN = 0x00034002;
pub const GLFW_CURSOR_DISABLED = 0x00034003;
pub const GLFW_ANY_RELEASE_BEHAVIOR = 0;
pub const GLFW_RELEASE_BEHAVIOR_FLUSH = 0x00035001;
pub const GLFW_RELEASE_BEHAVIOR_NONE = 0x00035002;
pub const GLFW_NATIVE_CONTEXT_API = 0x00036001;
pub const GLFW_EGL_CONTEXT_API = 0x00036002;
pub const GLFW_OSMESA_CONTEXT_API = 0x00036003;
pub const GLFW_ARROW_CURSOR = 0x00036001;
pub const GLFW_IBEAM_CURSOR = 0x00036002;
pub const GLFW_CROSSHAIR_CURSOR = 0x00036003;
pub const GLFW_HAND_CURSOR = 0x00036004;
pub const GLFW_HRESIZE_CURSOR = 0x00036005;
pub const GLFW_VRESIZE_CURSOR = 0x00036006;
pub const GLFW_CONNECTED = 0x00040001;
pub const GLFW_DISCONNECTED = 0x00040002;
pub const GLFW_JOYSTICK_HAT_BUTTONS = 0x00050001;
pub const GLFW_COCOA_CHDIR_RESOURCES = 0x00051001;
pub const GLFW_COCOA_MENUBAR = 0x00051002;
pub const GLFW_DONT_CARE = -1;
pub const GLAPIENTRY = APIENTRY;
