; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py UTC_ARGS: --version 5
; RUN: llc < %s -mtriple armv7-eabi -o - | FileCheck %s --check-prefixes=CHECK,CHECK-LE
; RUN: llc < %s -mtriple armebv7-eabi -o - | FileCheck %s --check-prefixes=CHECK,CHECK-BE

define arm_aapcs_vfpcc <8 x i8> @vmov_i8() {
; CHECK-LE-LABEL: vmov_i8:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xff00000000000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i8:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xff00000000000000
; CHECK-BE-NEXT:    vrev64.8 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1>
}

define arm_aapcs_vfpcc <4 x i16> @vmov_i16_a() {
; CHECK-LE-LABEL: vmov_i16_a:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xffff000000000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i16_a:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xffff000000000000
; CHECK-BE-NEXT:    vrev64.16 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <4 x i16> <i16 0, i16 0, i16 0, i16 -1>
}

define arm_aapcs_vfpcc <4 x i16> @vmov_i16_b() {
; CHECK-LE-LABEL: vmov_i16_b:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xff000000000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i16_b:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xff000000000000
; CHECK-BE-NEXT:    vrev64.16 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <4 x i16> <i16 0, i16 0, i16 0, i16 255>
}

define arm_aapcs_vfpcc <4 x i16> @vmov_i16_c() {
; CHECK-LE-LABEL: vmov_i16_c:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xff00000000000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i16_c:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xff00000000000000
; CHECK-BE-NEXT:    vrev64.16 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <4 x i16> <i16 0, i16 0, i16 0, i16 65280>
}

define arm_aapcs_vfpcc <2 x i32> @vmov_i32_a() {
; CHECK-LE-LABEL: vmov_i32_a:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xffffffff00000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i32_a:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xffffffff00000000
; CHECK-BE-NEXT:    vrev64.32 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <2 x i32> <i32 0, i32 -1>
}

define arm_aapcs_vfpcc <2 x i32> @vmov_i32_b() {
; CHECK-LE-LABEL: vmov_i32_b:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xff00000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i32_b:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xff00000000
; CHECK-BE-NEXT:    vrev64.32 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <2 x i32> <i32 0, i32 255>
}

define arm_aapcs_vfpcc <2 x i32> @vmov_i32_c() {
; CHECK-LE-LABEL: vmov_i32_c:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xff0000000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i32_c:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xff0000000000
; CHECK-BE-NEXT:    vrev64.32 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <2 x i32> <i32 0, i32 65280>
}

define arm_aapcs_vfpcc <2 x i32> @vmov_i32_d() {
; CHECK-LE-LABEL: vmov_i32_d:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xff000000000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i32_d:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xff000000000000
; CHECK-BE-NEXT:    vrev64.32 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <2 x i32> <i32 0, i32 16711680>
}

define arm_aapcs_vfpcc <2 x i32> @vmov_i32_e() {
; CHECK-LE-LABEL: vmov_i32_e:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xff00000000000000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i32_e:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 d16, #0xff00000000000000
; CHECK-BE-NEXT:    vrev64.32 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <2 x i32> <i32 0, i32 4278190080>
}

define arm_aapcs_vfpcc <1 x i64> @vmov_i64_a() {
; CHECK-LABEL: vmov_i64_a:
; CHECK:       @ %bb.0:
; CHECK-NEXT:    vmov.i8 d0, #0xff
; CHECK-NEXT:    bx lr
  ret <1 x i64> <i64 -1>
}

define arm_aapcs_vfpcc <1 x i64> @vmov_i64_b() {
; CHECK-LE-LABEL: vmov_i64_b:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 d0, #0xffff00ff0000ff
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_i64_b:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    d16, #0xff0000ff00ffff00
; CHECK-BE-NEXT:    vrev64.32 d0, d16
; CHECK-BE-NEXT:    bx lr
  ret <1 x i64> <i64 72056498804490495>
}

define arm_aapcs_vfpcc <2 x i64> @vmov_v2i64_b() {
; CHECK-LABEL: vmov_v2i64_b:
; CHECK:       @ %bb.0:
; CHECK-NEXT:    vmov.i64 q0, #0xffff00ff0000ff
; CHECK-NEXT:    bx lr
  ret <2 x i64> <i64 72056498804490495, i64 72056498804490495>
}

define arm_aapcs_vfpcc <4 x i32> @vmov_v4i32_b() {
; CHECK-LE-LABEL: vmov_v4i32_b:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 q0, #0xff0000ff00ffff00
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmov_v4i32_b:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 q0, #0xffff00ff0000ff
; CHECK-BE-NEXT:    bx lr
  ret <4 x i32> <i32 u0xffff00, i32 u0xff0000ff, i32 u0xffff00, i32 u0xff0000ff>
}

define arm_aapcs_vfpcc <2 x i64> @and_v2i64_b(<2 x i64> %a) {
; CHECK-LE-LABEL: and_v2i64_b:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 q8, #0xffff00ff0000ff
; CHECK-LE-NEXT:    vand q0, q0, q8
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: and_v2i64_b:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    q8, #0xff0000ff00ffff00
; CHECK-BE-NEXT:    vrev64.32 q8, q8
; CHECK-BE-NEXT:    vand q0, q0, q8
; CHECK-BE-NEXT:    bx lr
  %b = and <2 x i64> %a, <i64 72056498804490495, i64 72056498804490495>
  ret <2 x i64> %b
}

define arm_aapcs_vfpcc <4 x i32> @and_v4i32_b(<4 x i32> %a) {
; CHECK-LE-LABEL: and_v4i32_b:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmov.i64 q8, #0xff0000ff00ffff00
; CHECK-LE-NEXT:    vand q0, q0, q8
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: and_v4i32_b:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmov.i64 q8, #0xff0000ff00ffff00
; CHECK-BE-NEXT:    vrev64.32 q9, q0
; CHECK-BE-NEXT:    vand q8, q9, q8
; CHECK-BE-NEXT:    vrev64.32 q0, q8
; CHECK-BE-NEXT:    bx lr
  %b = and <4 x i32> %a, <i32 u0xffff00, i32 u0xff0000ff, i32 u0xffff00, i32 u0xff0000ff>
  ret <4 x i32> %b
}

define arm_aapcs_vfpcc <8 x i16> @vmvn_v16i8_m1() {
; CHECK-LE-LABEL: vmvn_v16i8_m1:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmvn.i32 q0, #0x10000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: vmvn_v16i8_m1:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmvn.i32 q0, #0x1
; CHECK-BE-NEXT:    bx lr
  ret <8 x i16> <i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534>
}

define arm_aapcs_vfpcc <8 x i16> @and_v8i16_m1(<8 x i16> %a) {
; CHECK-LE-LABEL: and_v8i16_m1:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vbic.i32 q0, #0x10000
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: and_v8i16_m1:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vrev64.32 q8, q0
; CHECK-BE-NEXT:    vbic.i32 q8, #0x10000
; CHECK-BE-NEXT:    vrev64.32 q0, q8
; CHECK-BE-NEXT:    bx lr
  %b = and <8 x i16> %a, <i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534>
  ret <8 x i16> %b
}

; FIXME: This is incorrect for BE
define arm_aapcs_vfpcc <8 x i16> @xor_v8i16_m1(<8 x i16> %a) {
; CHECK-LE-LABEL: xor_v8i16_m1:
; CHECK-LE:       @ %bb.0:
; CHECK-LE-NEXT:    vmvn.i32 q8, #0x10000
; CHECK-LE-NEXT:    veor q0, q0, q8
; CHECK-LE-NEXT:    bx lr
;
; CHECK-BE-LABEL: xor_v8i16_m1:
; CHECK-BE:       @ %bb.0:
; CHECK-BE-NEXT:    vmvn.i32 q8, #0x10000
; CHECK-BE-NEXT:    vrev64.16 q9, q0
; CHECK-BE-NEXT:    veor q8, q9, q8
; CHECK-BE-NEXT:    vrev64.16 q0, q8
; CHECK-BE-NEXT:    bx lr
  %b = xor <8 x i16> %a, <i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534>
  ret <8 x i16> %b
}
