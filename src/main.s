	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Users/annaedwards/Desktop/Kid's things/Danny/Personal/Hangman_C" "src/main.c"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/arm" "_types.h"
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_clock_t.h"
	.globl	_clear_stdin                    ; -- Begin function clear_stdin
	.p2align	2
_clear_stdin:                           ; @clear_stdin
Lfunc_begin0:
	.loc	1 9 0                           ; src/main.c:9:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp0:
	.loc	1 10 5 prologue_end             ; src/main.c:10:5
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	.loc	1 10 13 is_stmt 0               ; src/main.c:10:13
	bl	_getchar
	.loc	1 10 24                         ; src/main.c:10:24
	subs	w8, w0, #10
	cset	w8, eq
	mov	w9, #0
	stur	w9, [x29, #-4]                  ; 4-byte Folded Spill
	.loc	1 10 32                         ; src/main.c:10:32
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 10 35                         ; src/main.c:10:35
	bl	_getchar
	.loc	1 10 45                         ; src/main.c:10:45
	adds	w8, w0, #1
	cset	w8, ne
	stur	w8, [x29, #-4]                  ; 4-byte Folded Spill
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 45                          ; src/main.c:0:45
	ldur	w8, [x29, #-4]                  ; 4-byte Folded Reload
	.loc	1 10 5                          ; src/main.c:10:5
	tbz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_1
LBB0_5:
	.loc	1 11 1 is_stmt 1                ; src/main.c:11:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_delay                          ; -- Begin function delay
	.p2align	2
_delay:                                 ; @delay
Lfunc_begin1:
	.loc	1 13 0                          ; src/main.c:13:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
Ltmp2:
	.loc	1 14 21 prologue_end            ; src/main.c:14:21
	bl	_clock
	.loc	1 14 13 is_stmt 0               ; src/main.c:14:13
	str	x0, [sp]
	.loc	1 15 5 is_stmt 1                ; src/main.c:15:5
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	.loc	1 15 13 is_stmt 0               ; src/main.c:15:13
	bl	_clock
	.loc	1 15 23                         ; src/main.c:15:23
	ldr	x8, [sp]
	.loc	1 15 21                         ; src/main.c:15:21
	subs	x8, x0, x8
	mov	x9, #1000
	.loc	1 15 30                         ; src/main.c:15:30
	mul	x8, x8, x9
	mov	x9, #16960
	movk	x9, #15, lsl #16
	.loc	1 15 37                         ; src/main.c:15:37
	udiv	x8, x8, x9
	.loc	1 15 56                         ; src/main.c:15:56
	ldur	w9, [x29, #-4]
                                        ; kill: def $x9 killed $w9
	.loc	1 15 54                         ; src/main.c:15:54
	subs	x8, x8, x9
	cset	w8, hs
	.loc	1 15 5                          ; src/main.c:15:5
	tbnz	w8, #0, LBB1_3
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_1
LBB1_3:
	.loc	1 16 1 is_stmt 1                ; src/main.c:16:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp3:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_clearConsole                   ; -- Begin function clearConsole
	.p2align	2
_clearConsole:                          ; @clearConsole
Lfunc_begin2:
	.loc	1 18 0                          ; src/main.c:18:0
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
Ltmp4:
	.loc	1 22 9 prologue_end             ; src/main.c:22:9
	bl	_system
	.loc	1 24 1                          ; src/main.c:24:1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
Ltmp5:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_createWordProgress             ; -- Begin function createWordProgress
	.p2align	2
_createWordProgress:                    ; @createWordProgress
Lfunc_begin3:
	.loc	1 26 0                          ; src/main.c:26:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
Ltmp6:
	.loc	1 28 49 prologue_end            ; src/main.c:28:49
	ldur	w8, [x29, #-4]
	.loc	1 28 59 is_stmt 0               ; src/main.c:28:59
	add	w9, w8, #1
                                        ; implicit-def: $x8
	.loc	1 28 48                         ; src/main.c:28:48
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #1
	.loc	1 28 46                         ; src/main.c:28:46
	mul	x0, x8, x9
	.loc	1 28 26                         ; src/main.c:28:26
	bl	_malloc
	.loc	1 28 11                         ; src/main.c:28:11
	str	x0, [sp, #24]
	.loc	1 29 5 is_stmt 1                ; src/main.c:29:5
	ldr	x8, [sp, #24]
	.loc	1 29 21 is_stmt 0               ; src/main.c:29:21
	strb	wzr, [x8]
	.loc	1 30 31 is_stmt 1               ; src/main.c:30:31
	ldur	x0, [x29, #-24]
	.loc	1 30 24 is_stmt 0               ; src/main.c:30:24
	bl	_strlen
	.loc	1 30 9                          ; src/main.c:30:9
	mov	x8, x0
	str	w8, [sp, #20]
Ltmp7:
	.loc	1 31 14 is_stmt 1               ; src/main.c:31:14
	str	wzr, [sp, #16]
	.loc	1 31 10 is_stmt 0               ; src/main.c:31:10
	b	LBB3_1
LBB3_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_3 Depth 2
Ltmp8:
	.loc	1 31 21                         ; src/main.c:31:21
	ldr	w8, [sp, #16]
	.loc	1 31 25                         ; src/main.c:31:25
	ldur	w9, [x29, #-4]
	.loc	1 31 23                         ; src/main.c:31:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp9:
	.loc	1 31 5                          ; src/main.c:31:5
	tbnz	w8, #0, LBB3_12
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
Ltmp10:
	.loc	1 32 23 is_stmt 1               ; src/main.c:32:23
	sturb	wzr, [x29, #-25]
Ltmp11:
	.loc	1 33 18                         ; src/main.c:33:18
	str	wzr, [sp, #12]
	.loc	1 33 14 is_stmt 0               ; src/main.c:33:14
	b	LBB3_3
LBB3_3:                                 ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
Ltmp12:
	.loc	1 33 25                         ; src/main.c:33:25
	ldr	w8, [sp, #12]
	.loc	1 33 29                         ; src/main.c:33:29
	ldr	w9, [sp, #20]
	.loc	1 33 27                         ; src/main.c:33:27
	subs	w8, w8, w9
	cset	w8, ge
Ltmp13:
	.loc	1 33 9                          ; src/main.c:33:9
	tbnz	w8, #0, LBB3_8
	b	LBB3_4
LBB3_4:                                 ;   in Loop: Header=BB3_3 Depth=2
Ltmp14:
	.loc	1 34 17 is_stmt 1               ; src/main.c:34:17
	ldur	x8, [x29, #-16]
	.loc	1 34 22 is_stmt 0               ; src/main.c:34:22
	ldrsw	x9, [sp, #16]
	.loc	1 34 17                         ; src/main.c:34:17
	ldrsb	w8, [x8, x9]
	.loc	1 34 28                         ; src/main.c:34:28
	ldur	x9, [x29, #-24]
	.loc	1 34 43                         ; src/main.c:34:43
	ldrsw	x10, [sp, #12]
	.loc	1 34 28                         ; src/main.c:34:28
	ldrsb	w9, [x9, x10]
	.loc	1 34 25                         ; src/main.c:34:25
	subs	w8, w8, w9
	cset	w8, ne
Ltmp15:
	.loc	1 34 17                         ; src/main.c:34:17
	tbnz	w8, #0, LBB3_6
	b	LBB3_5
LBB3_5:                                 ;   in Loop: Header=BB3_3 Depth=2
Ltmp16:
	.loc	1 35 33 is_stmt 1               ; src/main.c:35:33
	ldur	x8, [x29, #-16]
	.loc	1 35 38 is_stmt 0               ; src/main.c:35:38
	ldrsw	x9, [sp, #16]
	.loc	1 35 33                         ; src/main.c:35:33
	add	x8, x8, x9
	ldrb	w8, [x8]
	add	x1, sp, #10
	.loc	1 35 32                         ; src/main.c:35:32
	strb	w8, [sp, #10]
	strb	wzr, [sp, #11]
	.loc	1 36 17 is_stmt 1               ; src/main.c:36:17
	ldr	x0, [sp, #24]
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	mov	w8, #1
	.loc	1 37 31                         ; src/main.c:37:31
	sturb	w8, [x29, #-25]
	.loc	1 38 13                         ; src/main.c:38:13
	b	LBB3_6
Ltmp17:
LBB3_6:                                 ;   in Loop: Header=BB3_3 Depth=2
	.loc	1 39 9                          ; src/main.c:39:9
	b	LBB3_7
Ltmp18:
LBB3_7:                                 ;   in Loop: Header=BB3_3 Depth=2
	.loc	1 33 44                         ; src/main.c:33:44
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	.loc	1 33 9 is_stmt 0                ; src/main.c:33:9
	b	LBB3_3
Ltmp19:
LBB3_8:                                 ;   in Loop: Header=BB3_1 Depth=1
	.loc	1 40 13 is_stmt 1               ; src/main.c:40:13
	ldurb	w8, [x29, #-25]
	.loc	1 40 27 is_stmt 0               ; src/main.c:40:27
	ands	w8, w8, #0x1
	cset	w8, ne
Ltmp20:
	.loc	1 40 13                         ; src/main.c:40:13
	tbnz	w8, #0, LBB3_10
	b	LBB3_9
LBB3_9:                                 ;   in Loop: Header=BB3_1 Depth=1
Ltmp21:
	.loc	1 41 13 is_stmt 1               ; src/main.c:41:13
	ldr	x0, [sp, #24]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x2, #2
	mov	x3, #-1
	bl	___strncat_chk
	.loc	1 42 9                          ; src/main.c:42:9
	b	LBB3_10
Ltmp22:
LBB3_10:                                ;   in Loop: Header=BB3_1 Depth=1
	.loc	1 43 5                          ; src/main.c:43:5
	b	LBB3_11
Ltmp23:
LBB3_11:                                ;   in Loop: Header=BB3_1 Depth=1
	.loc	1 31 38                         ; src/main.c:31:38
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	.loc	1 31 5 is_stmt 0                ; src/main.c:31:5
	b	LBB3_1
Ltmp24:
LBB3_12:
	.loc	1 44 12 is_stmt 1               ; src/main.c:44:12
	ldr	x0, [sp, #24]
	.loc	1 44 5 is_stmt 0                ; src/main.c:44:5
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Ltmp25:
Lfunc_end3:
	.cfi_endproc
                                        ; -- End function
	.globl	_letterInArray                  ; -- Begin function letterInArray
	.p2align	2
_letterInArray:                         ; @letterInArray
Lfunc_begin4:
	.loc	1 62 0 is_stmt 1                ; src/main.c:62:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	strb	w1, [sp, #15]
Ltmp26:
	.loc	1 63 29 prologue_end            ; src/main.c:63:29
	ldr	x0, [sp, #16]
	.loc	1 63 22 is_stmt 0               ; src/main.c:63:22
	bl	_strlen
	.loc	1 63 9                          ; src/main.c:63:9
	mov	x8, x0
	str	w8, [sp, #8]
Ltmp27:
	.loc	1 64 14 is_stmt 1               ; src/main.c:64:14
	str	wzr, [sp, #4]
	.loc	1 64 10 is_stmt 0               ; src/main.c:64:10
	b	LBB4_1
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp28:
	.loc	1 64 21                         ; src/main.c:64:21
	ldr	w8, [sp, #4]
	.loc	1 64 25                         ; src/main.c:64:25
	ldr	w9, [sp, #8]
	.loc	1 64 23                         ; src/main.c:64:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp29:
	.loc	1 64 5                          ; src/main.c:64:5
	tbnz	w8, #0, LBB4_6
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
Ltmp30:
	.loc	1 65 13 is_stmt 1               ; src/main.c:65:13
	ldr	x8, [sp, #16]
	.loc	1 65 18 is_stmt 0               ; src/main.c:65:18
	ldrsw	x9, [sp, #4]
	.loc	1 65 13                         ; src/main.c:65:13
	ldrsb	w8, [x8, x9]
	.loc	1 65 24                         ; src/main.c:65:24
	ldrsb	w9, [sp, #15]
	.loc	1 65 21                         ; src/main.c:65:21
	subs	w8, w8, w9
	cset	w8, ne
Ltmp31:
	.loc	1 65 13                         ; src/main.c:65:13
	tbnz	w8, #0, LBB4_4
	b	LBB4_3
LBB4_3:
	.loc	1 0 13                          ; src/main.c:0:13
	mov	w8, #1
Ltmp32:
	.loc	1 66 13 is_stmt 1               ; src/main.c:66:13
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB4_7
Ltmp33:
LBB4_4:                                 ;   in Loop: Header=BB4_1 Depth=1
	.loc	1 68 5                          ; src/main.c:68:5
	b	LBB4_5
Ltmp34:
LBB4_5:                                 ;   in Loop: Header=BB4_1 Depth=1
	.loc	1 64 38                         ; src/main.c:64:38
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	.loc	1 64 5 is_stmt 0                ; src/main.c:64:5
	b	LBB4_1
Ltmp35:
LBB4_6:
	.loc	1 0 5                           ; src/main.c:0:5
	mov	w8, #0
	.loc	1 69 5 is_stmt 1                ; src/main.c:69:5
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB4_7
LBB4_7:
	.loc	1 70 1                          ; src/main.c:70:1
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp36:
Lfunc_end4:
	.cfi_endproc
                                        ; -- End function
	.globl	_checkWord                      ; -- Begin function checkWord
	.p2align	2
_checkWord:                             ; @checkWord
Lfunc_begin5:
	.loc	1 72 0                          ; src/main.c:72:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
Ltmp37:
	.loc	1 73 29 prologue_end            ; src/main.c:73:29
	ldr	x0, [sp, #16]
	.loc	1 73 22 is_stmt 0               ; src/main.c:73:22
	bl	_strlen
	.loc	1 73 9                          ; src/main.c:73:9
	mov	x8, x0
	str	w8, [sp, #12]
Ltmp38:
	.loc	1 74 14 is_stmt 1               ; src/main.c:74:14
	str	wzr, [sp, #8]
	.loc	1 74 10 is_stmt 0               ; src/main.c:74:10
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp39:
	.loc	1 74 21                         ; src/main.c:74:21
	ldr	w8, [sp, #8]
	.loc	1 74 25                         ; src/main.c:74:25
	ldr	w9, [sp, #12]
	.loc	1 74 23                         ; src/main.c:74:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp40:
	.loc	1 74 5                          ; src/main.c:74:5
	tbnz	w8, #0, LBB5_11
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
Ltmp41:
	.loc	1 75 16 is_stmt 1               ; src/main.c:75:16
	ldr	x8, [sp, #16]
	.loc	1 75 21 is_stmt 0               ; src/main.c:75:21
	ldrsw	x9, [sp, #8]
	.loc	1 75 16                         ; src/main.c:75:16
	ldrsb	w8, [x8, x9]
	.loc	1 75 24                         ; src/main.c:75:24
	subs	w8, w8, #65
	cset	w8, lt
	.loc	1 75 31                         ; src/main.c:75:31
	tbnz	w8, #0, LBB5_4
	b	LBB5_3
LBB5_3:                                 ;   in Loop: Header=BB5_1 Depth=1
	.loc	1 75 34                         ; src/main.c:75:34
	ldr	x8, [sp, #16]
	.loc	1 75 39                         ; src/main.c:75:39
	ldrsw	x9, [sp, #8]
	.loc	1 75 34                         ; src/main.c:75:34
	ldrsb	w8, [x8, x9]
	.loc	1 75 42                         ; src/main.c:75:42
	subs	w8, w8, #90
	cset	w8, le
	.loc	1 75 50                         ; src/main.c:75:50
	tbnz	w8, #0, LBB5_9
	b	LBB5_4
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	.loc	1 75 54                         ; src/main.c:75:54
	ldr	x8, [sp, #16]
	.loc	1 75 59                         ; src/main.c:75:59
	ldrsw	x9, [sp, #8]
	.loc	1 75 54                         ; src/main.c:75:54
	ldrsb	w8, [x8, x9]
	.loc	1 75 62                         ; src/main.c:75:62
	subs	w8, w8, #97
	cset	w8, lt
	.loc	1 75 69                         ; src/main.c:75:69
	tbnz	w8, #0, LBB5_6
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	.loc	1 75 72                         ; src/main.c:75:72
	ldr	x8, [sp, #16]
	.loc	1 75 77                         ; src/main.c:75:77
	ldrsw	x9, [sp, #8]
	.loc	1 75 72                         ; src/main.c:75:72
	ldrsb	w8, [x8, x9]
	.loc	1 75 80                         ; src/main.c:75:80
	subs	w8, w8, #122
	cset	w8, le
Ltmp42:
	.loc	1 75 13                         ; src/main.c:75:13
	tbnz	w8, #0, LBB5_9
	b	LBB5_6
LBB5_6:
Ltmp43:
	.loc	1 76 17 is_stmt 1               ; src/main.c:76:17
	ldr	x8, [sp, #16]
	.loc	1 76 22 is_stmt 0               ; src/main.c:76:22
	ldrsw	x9, [sp, #8]
	.loc	1 76 17                         ; src/main.c:76:17
	ldrsb	w8, [x8, x9]
	.loc	1 76 25                         ; src/main.c:76:25
	subs	w8, w8, #32
	cset	w8, ne
Ltmp44:
	.loc	1 76 17                         ; src/main.c:76:17
	tbnz	w8, #0, LBB5_8
	b	LBB5_7
LBB5_7:
	.loc	1 0 17                          ; src/main.c:0:17
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
Ltmp45:
	.loc	1 77 17 is_stmt 1               ; src/main.c:77:17
	bl	_printf
	mov	w8, #0
	.loc	1 78 17                         ; src/main.c:78:17
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB5_12
Ltmp46:
LBB5_8:
	.loc	1 0 17 is_stmt 0                ; src/main.c:0:17
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
Ltmp47:
	.loc	1 80 17 is_stmt 1               ; src/main.c:80:17
	bl	_printf
	mov	w8, #0
	.loc	1 81 17                         ; src/main.c:81:17
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB5_12
Ltmp48:
LBB5_9:                                 ;   in Loop: Header=BB5_1 Depth=1
	.loc	1 84 5                          ; src/main.c:84:5
	b	LBB5_10
Ltmp49:
LBB5_10:                                ;   in Loop: Header=BB5_1 Depth=1
	.loc	1 74 38                         ; src/main.c:74:38
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	.loc	1 74 5 is_stmt 0                ; src/main.c:74:5
	b	LBB5_1
Ltmp50:
LBB5_11:
	.loc	1 0 5                           ; src/main.c:0:5
	mov	w8, #1
	.loc	1 85 5 is_stmt 1                ; src/main.c:85:5
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB5_12
LBB5_12:
	.loc	1 86 1                          ; src/main.c:86:1
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp51:
Lfunc_end5:
	.cfi_endproc
                                        ; -- End function
	.globl	_gameMode                       ; -- Begin function gameMode
	.p2align	2
_gameMode:                              ; @gameMode
Lfunc_begin6:
	.loc	1 89 0                          ; src/main.c:89:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
Ltmp52:
	.loc	1 91 5 prologue_end             ; src/main.c:91:5
	bl	_printf
	.loc	1 92 18                         ; src/main.c:92:18
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_scanf
	.loc	1 92 9 is_stmt 0                ; src/main.c:92:9
	stur	w0, [x29, #-12]
Ltmp53:
	.loc	1 93 9 is_stmt 1                ; src/main.c:93:9
	ldur	w8, [x29, #-12]
	.loc	1 93 16 is_stmt 0               ; src/main.c:93:16
	subs	w8, w8, #1
	cset	w8, eq
Ltmp54:
	.loc	1 93 9                          ; src/main.c:93:9
	tbnz	w8, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	.loc	1 0 9                           ; src/main.c:0:9
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
Ltmp55:
	.loc	1 94 9 is_stmt 1                ; src/main.c:94:9
	bl	_printf
	.loc	1 95 9                          ; src/main.c:95:9
	bl	_clear_stdin
	.loc	1 96 16                         ; src/main.c:96:16
	bl	_gameMode
	.loc	1 96 9 is_stmt 0                ; src/main.c:96:9
	stur	w0, [x29, #-4]
	b	LBB6_6
Ltmp56:
LBB6_2:
	.loc	1 97 16 is_stmt 1               ; src/main.c:97:16
	ldur	w8, [x29, #-8]
	.loc	1 97 21 is_stmt 0               ; src/main.c:97:21
	subs	w8, w8, #1
	cset	w8, eq
	.loc	1 97 26                         ; src/main.c:97:26
	tbnz	w8, #0, LBB6_5
	b	LBB6_3
LBB6_3:
	.loc	1 97 29                         ; src/main.c:97:29
	ldur	w8, [x29, #-8]
	.loc	1 97 34                         ; src/main.c:97:34
	subs	w8, w8, #2
	cset	w8, eq
Ltmp57:
	.loc	1 97 16                         ; src/main.c:97:16
	tbnz	w8, #0, LBB6_5
	b	LBB6_4
LBB6_4:
	.loc	1 0 16                          ; src/main.c:0:16
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
Ltmp58:
	.loc	1 98 9 is_stmt 1                ; src/main.c:98:9
	bl	_printf
	.loc	1 99 9                          ; src/main.c:99:9
	bl	_clear_stdin
	.loc	1 100 16                        ; src/main.c:100:16
	bl	_gameMode
	.loc	1 100 9 is_stmt 0               ; src/main.c:100:9
	stur	w0, [x29, #-4]
	b	LBB6_6
Ltmp59:
LBB6_5:
	.loc	1 102 16 is_stmt 1              ; src/main.c:102:16
	ldur	w8, [x29, #-8]
	.loc	1 102 9 is_stmt 0               ; src/main.c:102:9
	stur	w8, [x29, #-4]
	b	LBB6_6
Ltmp60:
LBB6_6:
	.loc	1 104 1 is_stmt 1               ; src/main.c:104:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp61:
Lfunc_end6:
	.cfi_endproc
                                        ; -- End function
	.globl	_getWordFromUser                ; -- Begin function getWordFromUser
	.p2align	2
_getWordFromUser:                       ; @getWordFromUser
Lfunc_begin7:
	.loc	1 106 0                         ; src/main.c:106:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp62:
	.loc	1 107 5 prologue_end            ; src/main.c:107:5
	bl	_clear_stdin
	mov	x0, #100
	.loc	1 108 18                        ; src/main.c:108:18
	bl	_malloc
	.loc	1 108 11 is_stmt 0              ; src/main.c:108:11
	str	x0, [sp, #16]
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
	.loc	1 109 5 is_stmt 1               ; src/main.c:109:5
	bl	_printf
	.loc	1 110 37                        ; src/main.c:110:37
	ldr	x8, [sp, #16]
	.loc	1 110 18 is_stmt 0              ; src/main.c:110:18
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.18@PAGE
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_scanf
	.loc	1 110 9                         ; src/main.c:110:9
	str	w0, [sp, #12]
Ltmp63:
	.loc	1 111 9 is_stmt 1               ; src/main.c:111:9
	ldr	w8, [sp, #12]
	.loc	1 111 16 is_stmt 0              ; src/main.c:111:16
	subs	w8, w8, #1
	cset	w8, eq
Ltmp64:
	.loc	1 111 9                         ; src/main.c:111:9
	tbnz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	.loc	1 0 9                           ; src/main.c:0:9
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
Ltmp65:
	.loc	1 112 9 is_stmt 1               ; src/main.c:112:9
	bl	_printf
	.loc	1 113 9                         ; src/main.c:113:9
	bl	_clear_stdin
	.loc	1 114 16                        ; src/main.c:114:16
	bl	_getWordFromUser
	.loc	1 114 9 is_stmt 0               ; src/main.c:114:9
	stur	x0, [x29, #-8]
	b	LBB7_5
Ltmp66:
LBB7_2:
	.loc	1 117 19 is_stmt 1              ; src/main.c:117:19
	ldr	x0, [sp, #16]
	.loc	1 117 9 is_stmt 0               ; src/main.c:117:9
	bl	_checkWord
	.loc	1 117 25                        ; src/main.c:117:25
	ands	w8, w0, #0x1
	cset	w8, ne
Ltmp67:
	.loc	1 117 9                         ; src/main.c:117:9
	tbnz	w8, #0, LBB7_4
	b	LBB7_3
LBB7_3:
Ltmp68:
	.loc	1 118 14 is_stmt 1              ; src/main.c:118:14
	ldr	x0, [sp, #16]
	.loc	1 118 9 is_stmt 0               ; src/main.c:118:9
	bl	_free
                                        ; kill: def $x8 killed $xzr
	.loc	1 119 14 is_stmt 1              ; src/main.c:119:14
	str	xzr, [sp, #16]
	.loc	1 120 16                        ; src/main.c:120:16
	bl	_getWordFromUser
	.loc	1 120 14 is_stmt 0              ; src/main.c:120:14
	str	x0, [sp, #16]
	.loc	1 121 5 is_stmt 1               ; src/main.c:121:5
	b	LBB7_4
Ltmp69:
LBB7_4:
	.loc	1 122 12                        ; src/main.c:122:12
	ldr	x8, [sp, #16]
	.loc	1 122 5 is_stmt 0               ; src/main.c:122:5
	stur	x8, [x29, #-8]
	b	LBB7_5
LBB7_5:
	.loc	1 123 1 is_stmt 1               ; src/main.c:123:1
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp70:
Lfunc_end7:
	.cfi_endproc
                                        ; -- End function
	.globl	_startGame                      ; -- Begin function startGame
	.p2align	2
_startGame:                             ; @startGame
Lfunc_begin8:
	.loc	1 125 0                         ; src/main.c:125:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
Ltmp71:
	.loc	1 126 22 prologue_end           ; src/main.c:126:22
	ldur	w8, [x29, #-4]
	.loc	1 126 33 is_stmt 0              ; src/main.c:126:33
	add	w8, w8, #9
	.loc	1 126 9                         ; src/main.c:126:9
	stur	w8, [x29, #-8]
	.loc	1 127 47 is_stmt 1              ; src/main.c:127:47
	ldursw	x9, [x29, #-8]
	mov	x8, #1
	.loc	1 127 45 is_stmt 0              ; src/main.c:127:45
	mul	x0, x8, x9
	.loc	1 127 25                        ; src/main.c:127:25
	bl	_malloc
	.loc	1 127 11                        ; src/main.c:127:11
	str	x0, [sp, #16]
	.loc	1 128 5 is_stmt 1               ; src/main.c:128:5
	ldr	x8, [sp, #16]
	.loc	1 128 20 is_stmt 0              ; src/main.c:128:20
	strb	wzr, [x8]
Ltmp72:
	.loc	1 129 14 is_stmt 1              ; src/main.c:129:14
	str	wzr, [sp, #12]
	.loc	1 129 10 is_stmt 0              ; src/main.c:129:10
	b	LBB8_1
LBB8_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp73:
	.loc	1 129 21                        ; src/main.c:129:21
	ldr	w8, [sp, #12]
	.loc	1 129 25                        ; src/main.c:129:25
	ldur	w9, [x29, #-4]
	.loc	1 129 23                        ; src/main.c:129:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp74:
	.loc	1 129 5                         ; src/main.c:129:5
	tbnz	w8, #0, LBB8_4
	b	LBB8_2
LBB8_2:                                 ;   in Loop: Header=BB8_1 Depth=1
Ltmp75:
	.loc	1 130 9 is_stmt 1               ; src/main.c:130:9
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x2, #2
	mov	x3, #-1
	bl	___strncat_chk
	.loc	1 131 5                         ; src/main.c:131:5
	b	LBB8_3
Ltmp76:
LBB8_3:                                 ;   in Loop: Header=BB8_1 Depth=1
	.loc	1 129 38                        ; src/main.c:129:38
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	.loc	1 129 5 is_stmt 0               ; src/main.c:129:5
	b	LBB8_1
Ltmp77:
LBB8_4:
	.loc	1 132 12 is_stmt 1              ; src/main.c:132:12
	ldr	x0, [sp, #16]
	.loc	1 132 5 is_stmt 0               ; src/main.c:132:5
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp78:
Lfunc_end8:
	.cfi_endproc
                                        ; -- End function
	.globl	_displayWinOrLoss               ; -- Begin function displayWinOrLoss
	.p2align	2
_displayWinOrLoss:                      ; @displayWinOrLoss
Lfunc_begin9:
	.loc	1 135 0 is_stmt 1               ; src/main.c:135:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	w4, [sp, #12]
Ltmp79:
	.loc	1 136 5 prologue_end            ; src/main.c:136:5
	bl	_clearConsole
	.loc	1 137 37                        ; src/main.c:137:37
	ldur	x8, [x29, #-16]
	.loc	1 137 5 is_stmt 0               ; src/main.c:137:5
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.19@PAGE
	add	x0, x0, l_.str.19@PAGEOFF
	bl	_printf
	.loc	1 138 34 is_stmt 1              ; src/main.c:138:34
	ldursw	x9, [x29, #-4]
	adrp	x8, _hangmanImages@PAGE
	add	x8, x8, _hangmanImages@PAGEOFF
	.loc	1 138 20 is_stmt 0              ; src/main.c:138:20
	ldr	x8, [x8, x9, lsl #3]
	.loc	1 138 5                         ; src/main.c:138:5
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.20@PAGE
	add	x0, x0, l_.str.20@PAGEOFF
	bl	_printf
Ltmp80:
	.loc	1 139 9 is_stmt 1               ; src/main.c:139:9
	ldr	w8, [sp, #12]
	.loc	1 139 17 is_stmt 0              ; src/main.c:139:17
	subs	w8, w8, #1
	cset	w8, ne
Ltmp81:
	.loc	1 139 9                         ; src/main.c:139:9
	tbnz	w8, #0, LBB9_2
	b	LBB9_1
LBB9_1:
Ltmp82:
	.loc	1 140 30 is_stmt 1              ; src/main.c:140:30
	ldr	x8, [sp, #16]
	.loc	1 140 9 is_stmt 0               ; src/main.c:140:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.21@PAGE
	add	x0, x0, l_.str.21@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.22@PAGE
	add	x0, x0, l_.str.22@PAGEOFF
	.loc	1 141 9 is_stmt 1               ; src/main.c:141:9
	bl	_printf
	.loc	1 142 5                         ; src/main.c:142:5
	b	LBB9_3
Ltmp83:
LBB9_2:
	.loc	1 143 32                        ; src/main.c:143:32
	ldr	x8, [sp, #24]
	.loc	1 143 9 is_stmt 0               ; src/main.c:143:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.23@PAGE
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_printf
	.loc	1 144 37 is_stmt 1              ; src/main.c:144:37
	ldr	x8, [sp, #16]
	.loc	1 144 9 is_stmt 0               ; src/main.c:144:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.24@PAGE
	add	x0, x0, l_.str.24@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.25@PAGE
	add	x0, x0, l_.str.25@PAGEOFF
	.loc	1 145 9 is_stmt 1               ; src/main.c:145:9
	bl	_printf
	b	LBB9_3
Ltmp84:
LBB9_3:
	.loc	1 147 1                         ; src/main.c:147:1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Ltmp85:
Lfunc_end9:
	.cfi_endproc
                                        ; -- End function
	.globl	_seperateGuessedLetters         ; -- Begin function seperateGuessedLetters
	.p2align	2
_seperateGuessedLetters:                ; @seperateGuessedLetters
Lfunc_begin10:
	.loc	1 149 0                         ; src/main.c:149:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
Ltmp86:
	.loc	1 151 39 prologue_end           ; src/main.c:151:39
	ldur	x0, [x29, #-8]
	.loc	1 151 32 is_stmt 0              ; src/main.c:151:32
	bl	_strlen
	.loc	1 151 9                         ; src/main.c:151:9
	mov	x8, x0
	stur	w8, [x29, #-12]
	.loc	1 152 61 is_stmt 1              ; src/main.c:152:61
	ldur	w8, [x29, #-12]
	mov	w9, #3
	.loc	1 152 82 is_stmt 0              ; src/main.c:152:82
	mul	w9, w8, w9
                                        ; implicit-def: $x8
	.loc	1 152 60                        ; src/main.c:152:60
	mov	x8, x9
	sxtw	x9, w8
	mov	x8, #1
	.loc	1 152 58                        ; src/main.c:152:58
	mul	x8, x8, x9
	.loc	1 152 88                        ; src/main.c:152:88
	add	x0, x8, #1
	.loc	1 152 37                        ; src/main.c:152:37
	bl	_malloc
	.loc	1 152 11                        ; src/main.c:152:11
	str	x0, [sp, #8]
	.loc	1 155 5 is_stmt 1               ; src/main.c:155:5
	ldr	x8, [sp, #8]
	.loc	1 155 32 is_stmt 0              ; src/main.c:155:32
	strb	wzr, [x8]
Ltmp87:
	.loc	1 157 14 is_stmt 1              ; src/main.c:157:14
	str	wzr, [sp, #4]
	.loc	1 157 10 is_stmt 0              ; src/main.c:157:10
	b	LBB10_1
LBB10_1:                                ; =>This Inner Loop Header: Depth=1
Ltmp88:
	.loc	1 157 21                        ; src/main.c:157:21
	ldr	w8, [sp, #4]
	.loc	1 157 26                        ; src/main.c:157:26
	ldur	w9, [x29, #-12]
	.loc	1 157 23                        ; src/main.c:157:23
	subs	w8, w8, w9
	cset	w8, gt
Ltmp89:
	.loc	1 157 5                         ; src/main.c:157:5
	tbnz	w8, #0, LBB10_6
	b	LBB10_2
LBB10_2:                                ;   in Loop: Header=BB10_1 Depth=1
Ltmp90:
	.loc	1 158 25 is_stmt 1              ; src/main.c:158:25
	ldur	x8, [x29, #-8]
	.loc	1 158 40 is_stmt 0              ; src/main.c:158:40
	ldrsw	x9, [sp, #4]
	.loc	1 158 25                        ; src/main.c:158:25
	add	x8, x8, x9
	ldrb	w8, [x8]
	add	x1, sp, #2
	.loc	1 158 24                        ; src/main.c:158:24
	strb	w8, [sp, #2]
	strb	wzr, [sp, #3]
	.loc	1 159 9 is_stmt 1               ; src/main.c:159:9
	ldr	x0, [sp, #8]
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
Ltmp91:
	.loc	1 161 13                        ; src/main.c:161:13
	ldr	w8, [sp, #4]
	.loc	1 161 14 is_stmt 0              ; src/main.c:161:14
	add	w8, w8, #1
	.loc	1 161 19                        ; src/main.c:161:19
	ldur	w9, [x29, #-12]
	.loc	1 161 17                        ; src/main.c:161:17
	subs	w8, w8, w9
	cset	w8, ge
Ltmp92:
	.loc	1 161 13                        ; src/main.c:161:13
	tbnz	w8, #0, LBB10_4
	b	LBB10_3
LBB10_3:                                ;   in Loop: Header=BB10_1 Depth=1
Ltmp93:
	.loc	1 162 13 is_stmt 1              ; src/main.c:162:13
	ldr	x0, [sp, #8]
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	mov	x2, #3
	mov	x3, #-1
	bl	___strncat_chk
	.loc	1 163 9                         ; src/main.c:163:9
	b	LBB10_4
Ltmp94:
LBB10_4:                                ;   in Loop: Header=BB10_1 Depth=1
	.loc	1 164 5                         ; src/main.c:164:5
	b	LBB10_5
Ltmp95:
LBB10_5:                                ;   in Loop: Header=BB10_1 Depth=1
	.loc	1 157 49                        ; src/main.c:157:49
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	.loc	1 157 5 is_stmt 0               ; src/main.c:157:5
	b	LBB10_1
Ltmp96:
LBB10_6:
	.loc	1 165 12 is_stmt 1              ; src/main.c:165:12
	ldr	x0, [sp, #8]
	.loc	1 165 5 is_stmt 0               ; src/main.c:165:5
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp97:
Lfunc_end10:
	.cfi_endproc
                                        ; -- End function
	.globl	_guesses                        ; -- Begin function guesses
	.p2align	2
_guesses:                               ; @guesses
Lfunc_begin11:
	.loc	1 169 0 is_stmt 1               ; src/main.c:169:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #56]
	str	w1, [sp, #52]
	str	x2, [sp, #40]
Ltmp98:
	.loc	1 170 9 prologue_end            ; src/main.c:170:9
	str	wzr, [sp, #36]
	mov	x0, #24
	.loc	1 172 28                        ; src/main.c:172:28
	bl	_malloc
	.loc	1 172 11 is_stmt 0              ; src/main.c:172:11
	str	x0, [sp, #24]
	.loc	1 173 5 is_stmt 1               ; src/main.c:173:5
	ldr	x8, [sp, #24]
	.loc	1 173 23 is_stmt 0              ; src/main.c:173:23
	strb	wzr, [x8]
	adrp	x8, l_.str.27@PAGE
	add	x8, x8, l_.str.27@PAGEOFF
	.loc	1 174 10 is_stmt 1              ; src/main.c:174:10
	str	x8, [sp, #16]
	.loc	1 176 5                         ; src/main.c:176:5
	b	LBB11_1
LBB11_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 176 12 is_stmt 0              ; src/main.c:176:12
	ldr	w8, [sp, #36]
	.loc	1 176 14                        ; src/main.c:176:14
	subs	w8, w8, #9
	cset	w8, gt
	.loc	1 176 5                         ; src/main.c:176:5
	tbnz	w8, #0, LBB11_27
	b	LBB11_2
LBB11_2:                                ;   in Loop: Header=BB11_1 Depth=1
Ltmp99:
	.loc	1 177 9 is_stmt 1               ; src/main.c:177:9
	bl	_clearConsole
Ltmp100:
	.loc	1 178 20                        ; src/main.c:178:20
	ldr	x0, [sp, #24]
	.loc	1 178 13 is_stmt 0              ; src/main.c:178:13
	bl	_strlen
	.loc	1 178 36                        ; src/main.c:178:36
	subs	x8, x0, #0
	cset	w8, ls
Ltmp101:
	.loc	1 178 13                        ; src/main.c:178:13
	tbnz	w8, #0, LBB11_4
	b	LBB11_3
LBB11_3:                                ;   in Loop: Header=BB11_1 Depth=1
Ltmp102:
	.loc	1 179 62 is_stmt 1              ; src/main.c:179:62
	ldr	x0, [sp, #24]
	.loc	1 179 39 is_stmt 0              ; src/main.c:179:39
	bl	_seperateGuessedLetters
	.loc	1 179 37                        ; src/main.c:179:37
	str	x0, [sp, #16]
	.loc	1 180 9 is_stmt 1               ; src/main.c:180:9
	b	LBB11_4
Ltmp103:
LBB11_4:                                ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 181 41                        ; src/main.c:181:41
	ldr	x8, [sp, #16]
	.loc	1 181 9 is_stmt 0               ; src/main.c:181:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.19@PAGE
	add	x0, x0, l_.str.19@PAGEOFF
	bl	_printf
	.loc	1 182 38 is_stmt 1              ; src/main.c:182:38
	ldrsw	x9, [sp, #36]
	adrp	x8, _hangmanImages@PAGE
	add	x8, x8, _hangmanImages@PAGEOFF
	.loc	1 182 24 is_stmt 0              ; src/main.c:182:24
	ldr	x8, [x8, x9, lsl #3]
	.loc	1 182 9                         ; src/main.c:182:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.20@PAGE
	add	x0, x0, l_.str.20@PAGEOFF
	bl	_printf
	.loc	1 183 30 is_stmt 1              ; src/main.c:183:30
	ldr	x8, [sp, #40]
	.loc	1 183 9 is_stmt 0               ; src/main.c:183:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.21@PAGE
	add	x0, x0, l_.str.21@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.28@PAGE
	add	x0, x0, l_.str.28@PAGEOFF
	.loc	1 184 9 is_stmt 1               ; src/main.c:184:9
	bl	_printf
	.loc	1 185 22                        ; src/main.c:185:22
	mov	x9, sp
	sub	x8, x29, #59
	str	x8, [x9]
	adrp	x0, l_.str.29@PAGE
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_scanf
	.loc	1 185 13 is_stmt 0              ; src/main.c:185:13
	str	w0, [sp, #12]
Ltmp104:
	.loc	1 186 13 is_stmt 1              ; src/main.c:186:13
	ldr	w8, [sp, #12]
	.loc	1 186 20 is_stmt 0              ; src/main.c:186:20
	subs	w8, w8, #1
	cset	w8, eq
Ltmp105:
	.loc	1 186 13                        ; src/main.c:186:13
	tbnz	w8, #0, LBB11_6
	b	LBB11_5
LBB11_5:                                ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 0 13                          ; src/main.c:0:13
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
Ltmp106:
	.loc	1 187 13 is_stmt 1              ; src/main.c:187:13
	bl	_printf
	.loc	1 188 13                        ; src/main.c:188:13
	bl	_clear_stdin
	.loc	1 189 13                        ; src/main.c:189:13
	b	LBB11_1
Ltmp107:
LBB11_6:                                ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; src/main.c:0:13
	sub	x0, x29, #59
Ltmp108:
	.loc	1 191 13 is_stmt 1              ; src/main.c:191:13
	bl	_strlen
	.loc	1 191 27 is_stmt 0              ; src/main.c:191:27
	subs	x8, x0, #1
	cset	w8, ne
Ltmp109:
	.loc	1 191 13                        ; src/main.c:191:13
	tbnz	w8, #0, LBB11_19
	b	LBB11_7
LBB11_7:                                ;   in Loop: Header=BB11_1 Depth=1
Ltmp110:
	.loc	1 192 31 is_stmt 1              ; src/main.c:192:31
	ldr	x0, [sp, #24]
	.loc	1 192 47 is_stmt 0              ; src/main.c:192:47
	ldursb	w1, [x29, #-59]
	.loc	1 192 17                        ; src/main.c:192:17
	bl	_letterInArray
Ltmp111:
	.loc	1 192 17                        ; src/main.c:192:17
	tbz	w0, #0, LBB11_9
	b	LBB11_8
LBB11_8:                                ;   in Loop: Header=BB11_1 Depth=1
Ltmp112:
	.loc	1 193 17 is_stmt 1              ; src/main.c:193:17
	mov	x9, sp
	sub	x8, x29, #59
	str	x8, [x9]
	adrp	x0, l_.str.30@PAGE
	add	x0, x0, l_.str.30@PAGEOFF
	bl	_printf
	mov	w0, #750
	.loc	1 194 17                        ; src/main.c:194:17
	bl	_delay
	.loc	1 195 17                        ; src/main.c:195:17
	b	LBB11_1
Ltmp113:
LBB11_9:                                ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 198 17                        ; src/main.c:198:17
	ldr	x0, [sp, #24]
	sub	x1, x29, #59
	mov	x2, #1
	mov	x3, #-1
	bl	___strncat_chk
	.loc	1 199 66                        ; src/main.c:199:66
	ldr	x0, [sp, #24]
	.loc	1 199 43 is_stmt 0              ; src/main.c:199:43
	bl	_seperateGuessedLetters
	.loc	1 199 41                        ; src/main.c:199:41
	str	x0, [sp, #16]
	b	LBB11_10
Ltmp114:
LBB11_10:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 201 31 is_stmt 1              ; src/main.c:201:31
	ldr	x0, [sp, #56]
	.loc	1 201 37 is_stmt 0              ; src/main.c:201:37
	ldursb	w1, [x29, #-59]
	.loc	1 201 17                        ; src/main.c:201:17
	bl	_letterInArray
Ltmp115:
	.loc	1 201 17                        ; src/main.c:201:17
	tbz	w0, #0, LBB11_15
	b	LBB11_11
LBB11_11:                               ;   in Loop: Header=BB11_1 Depth=1
Ltmp116:
	.loc	1 202 51 is_stmt 1              ; src/main.c:202:51
	ldr	w0, [sp, #52]
	.loc	1 202 63 is_stmt 0              ; src/main.c:202:63
	ldr	x1, [sp, #56]
	.loc	1 202 69                        ; src/main.c:202:69
	ldr	x2, [sp, #24]
	.loc	1 202 32                        ; src/main.c:202:32
	bl	_createWordProgress
	.loc	1 202 30                        ; src/main.c:202:30
	str	x0, [sp, #40]
Ltmp117:
	.loc	1 203 28 is_stmt 1              ; src/main.c:203:28
	ldr	x0, [sp, #40]
	.loc	1 203 42 is_stmt 0              ; src/main.c:203:42
	ldr	x1, [sp, #56]
	.loc	1 203 21                        ; src/main.c:203:21
	bl	_strcmp
	.loc	1 203 48                        ; src/main.c:203:48
	subs	w8, w0, #0
	cset	w8, ne
Ltmp118:
	.loc	1 203 21                        ; src/main.c:203:21
	tbnz	w8, #0, LBB11_13
	b	LBB11_12
LBB11_12:
Ltmp119:
	.loc	1 204 38 is_stmt 1              ; src/main.c:204:38
	ldr	w0, [sp, #36]
	.loc	1 204 41 is_stmt 0              ; src/main.c:204:41
	ldr	x1, [sp, #16]
	.loc	1 204 66                        ; src/main.c:204:66
	ldr	x2, [sp, #40]
	.loc	1 204 80                        ; src/main.c:204:80
	ldr	x3, [sp, #56]
	mov	w4, #1
	.loc	1 204 21                        ; src/main.c:204:21
	bl	_displayWinOrLoss
	.loc	1 205 26 is_stmt 1              ; src/main.c:205:26
	ldr	x0, [sp, #24]
	.loc	1 205 21 is_stmt 0              ; src/main.c:205:21
	bl	_free
	.loc	1 206 21 is_stmt 1              ; src/main.c:206:21
	b	LBB11_27
Ltmp120:
LBB11_13:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 208 21                        ; src/main.c:208:21
	mov	x9, sp
	sub	x8, x29, #59
	str	x8, [x9]
	adrp	x0, l_.str.31@PAGE
	add	x0, x0, l_.str.31@PAGEOFF
	bl	_printf
	mov	w0, #750
	.loc	1 209 21                        ; src/main.c:209:21
	bl	_delay
	b	LBB11_14
Ltmp121:
LBB11_14:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 211 13                        ; src/main.c:211:13
	b	LBB11_18
Ltmp122:
LBB11_15:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 212 17                        ; src/main.c:212:17
	mov	x9, sp
	sub	x8, x29, #59
	str	x8, [x9]
	adrp	x0, l_.str.32@PAGE
	add	x0, x0, l_.str.32@PAGEOFF
	bl	_printf
	mov	w0, #750
	.loc	1 213 17                        ; src/main.c:213:17
	bl	_delay
	.loc	1 214 18                        ; src/main.c:214:18
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
Ltmp123:
	.loc	1 215 21                        ; src/main.c:215:21
	ldr	w8, [sp, #36]
	.loc	1 215 23 is_stmt 0              ; src/main.c:215:23
	subs	w8, w8, #9
	cset	w8, ne
Ltmp124:
	.loc	1 215 21                        ; src/main.c:215:21
	tbnz	w8, #0, LBB11_17
	b	LBB11_16
LBB11_16:
Ltmp125:
	.loc	1 216 38 is_stmt 1              ; src/main.c:216:38
	ldr	w0, [sp, #36]
	.loc	1 216 41 is_stmt 0              ; src/main.c:216:41
	ldr	x1, [sp, #16]
	.loc	1 216 66                        ; src/main.c:216:66
	ldr	x2, [sp, #40]
	.loc	1 216 80                        ; src/main.c:216:80
	ldr	x3, [sp, #56]
	mov	w4, #0
	.loc	1 216 21                        ; src/main.c:216:21
	bl	_displayWinOrLoss
	.loc	1 217 26 is_stmt 1              ; src/main.c:217:26
	ldr	x0, [sp, #24]
	.loc	1 217 21 is_stmt 0              ; src/main.c:217:21
	bl	_free
	.loc	1 218 21 is_stmt 1              ; src/main.c:218:21
	b	LBB11_27
Ltmp126:
LBB11_17:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 0 21 is_stmt 0                ; src/main.c:0:21
	b	LBB11_18
LBB11_18:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 221 9 is_stmt 1               ; src/main.c:221:9
	b	LBB11_19
Ltmp127:
LBB11_19:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 0 9 is_stmt 0                 ; src/main.c:0:9
	sub	x0, x29, #59
Ltmp128:
	.loc	1 222 13 is_stmt 1              ; src/main.c:222:13
	bl	_strlen
	.loc	1 222 27 is_stmt 0              ; src/main.c:222:27
	subs	x8, x0, #1
	cset	w8, ls
Ltmp129:
	.loc	1 222 13                        ; src/main.c:222:13
	tbnz	w8, #0, LBB11_26
	b	LBB11_20
LBB11_20:                               ;   in Loop: Header=BB11_1 Depth=1
Ltmp130:
	.loc	1 223 31 is_stmt 1              ; src/main.c:223:31
	ldr	x1, [sp, #56]
	sub	x0, x29, #59
	.loc	1 223 17 is_stmt 0              ; src/main.c:223:17
	bl	_strcmp
	.loc	1 223 37                        ; src/main.c:223:37
	subs	w8, w0, #0
	cset	w8, ne
Ltmp131:
	.loc	1 223 17                        ; src/main.c:223:17
	tbnz	w8, #0, LBB11_22
	b	LBB11_21
LBB11_21:
	.loc	1 0 17                          ; src/main.c:0:17
	mov	w0, #750
Ltmp132:
	.loc	1 224 17 is_stmt 1              ; src/main.c:224:17
	bl	_delay
	.loc	1 225 34                        ; src/main.c:225:34
	ldr	w0, [sp, #36]
	.loc	1 225 37 is_stmt 0              ; src/main.c:225:37
	ldr	x1, [sp, #16]
	.loc	1 225 62                        ; src/main.c:225:62
	ldr	x2, [sp, #40]
	.loc	1 225 76                        ; src/main.c:225:76
	ldr	x3, [sp, #56]
	mov	w4, #1
	.loc	1 225 17                        ; src/main.c:225:17
	bl	_displayWinOrLoss
	.loc	1 226 22 is_stmt 1              ; src/main.c:226:22
	ldr	x0, [sp, #24]
	.loc	1 226 17 is_stmt 0              ; src/main.c:226:17
	bl	_free
	.loc	1 227 17 is_stmt 1              ; src/main.c:227:17
	b	LBB11_27
Ltmp133:
LBB11_22:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 229 17                        ; src/main.c:229:17
	mov	x9, sp
	sub	x8, x29, #59
	str	x8, [x9]
	adrp	x0, l_.str.33@PAGE
	add	x0, x0, l_.str.33@PAGEOFF
	bl	_printf
	mov	w0, #750
	.loc	1 230 17                        ; src/main.c:230:17
	bl	_delay
	.loc	1 231 18                        ; src/main.c:231:18
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
Ltmp134:
	.loc	1 232 21                        ; src/main.c:232:21
	ldr	w8, [sp, #36]
	.loc	1 232 23 is_stmt 0              ; src/main.c:232:23
	subs	w8, w8, #9
	cset	w8, ne
Ltmp135:
	.loc	1 232 21                        ; src/main.c:232:21
	tbnz	w8, #0, LBB11_24
	b	LBB11_23
LBB11_23:
Ltmp136:
	.loc	1 233 38 is_stmt 1              ; src/main.c:233:38
	ldr	w0, [sp, #36]
	.loc	1 233 41 is_stmt 0              ; src/main.c:233:41
	ldr	x1, [sp, #16]
	.loc	1 233 66                        ; src/main.c:233:66
	ldr	x2, [sp, #40]
	.loc	1 233 80                        ; src/main.c:233:80
	ldr	x3, [sp, #56]
	mov	w4, #0
	.loc	1 233 21                        ; src/main.c:233:21
	bl	_displayWinOrLoss
	.loc	1 234 26 is_stmt 1              ; src/main.c:234:26
	ldr	x0, [sp, #24]
	.loc	1 234 21 is_stmt 0              ; src/main.c:234:21
	bl	_free
	.loc	1 235 21 is_stmt 1              ; src/main.c:235:21
	b	LBB11_27
Ltmp137:
LBB11_24:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 0 21 is_stmt 0                ; src/main.c:0:21
	b	LBB11_25
LBB11_25:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 239 9 is_stmt 1               ; src/main.c:239:9
	b	LBB11_26
Ltmp138:
LBB11_26:                               ;   in Loop: Header=BB11_1 Depth=1
	.loc	1 176 5                         ; src/main.c:176:5
	b	LBB11_1
LBB11_27:
	.loc	1 241 1                         ; src/main.c:241:1
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB11_29
	b	LBB11_28
LBB11_28:
	bl	___stack_chk_fail
LBB11_29:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
Ltmp139:
Lfunc_end11:
	.cfi_endproc
                                        ; -- End function
	.globl	_openFile                       ; -- Begin function openFile
	.p2align	2
_openFile:                              ; @openFile
Lfunc_begin12:
	.loc	1 243 0                         ; src/main.c:243:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.34@PAGE
	add	x0, x0, l_.str.34@PAGEOFF
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
Ltmp140:
	.loc	1 244 21 prologue_end           ; src/main.c:244:21
	bl	_fopen
	.loc	1 244 11 is_stmt 0              ; src/main.c:244:11
	str	x0, [sp, #8]
Ltmp141:
	.loc	1 245 9 is_stmt 1               ; src/main.c:245:9
	ldr	x8, [sp, #8]
	.loc	1 245 17 is_stmt 0              ; src/main.c:245:17
	subs	x8, x8, #0
	cset	w8, ne
Ltmp142:
	.loc	1 245 9                         ; src/main.c:245:9
	tbnz	w8, #0, LBB12_2
	b	LBB12_1
LBB12_1:
	.loc	1 0 9                           ; src/main.c:0:9
	adrp	x0, l_.str.36@PAGE
	add	x0, x0, l_.str.36@PAGEOFF
Ltmp143:
	.loc	1 246 9 is_stmt 1               ; src/main.c:246:9
	bl	_printf
	mov	w0, #1
	.loc	1 247 9                         ; src/main.c:247:9
	bl	_exit
Ltmp144:
LBB12_2:
	.loc	1 249 12                        ; src/main.c:249:12
	ldr	x0, [sp, #8]
	.loc	1 249 5 is_stmt 0               ; src/main.c:249:5
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp145:
Lfunc_end12:
	.cfi_endproc
                                        ; -- End function
	.globl	_checkMallocSuccess             ; -- Begin function checkMallocSuccess
	.p2align	2
_checkMallocSuccess:                    ; @checkMallocSuccess
Lfunc_begin13:
	.loc	1 252 0 is_stmt 1               ; src/main.c:252:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
Ltmp146:
	.loc	1 253 9 prologue_end            ; src/main.c:253:9
	ldr	x8, [sp, #8]
	.loc	1 253 17 is_stmt 0              ; src/main.c:253:17
	subs	x8, x8, #0
	cset	w8, ne
Ltmp147:
	.loc	1 253 9                         ; src/main.c:253:9
	tbnz	w8, #0, LBB13_2
	b	LBB13_1
LBB13_1:
	.loc	1 0 9                           ; src/main.c:0:9
	adrp	x0, l_.str.37@PAGE
	add	x0, x0, l_.str.37@PAGEOFF
Ltmp148:
	.loc	1 254 9 is_stmt 1               ; src/main.c:254:9
	bl	_printf
	mov	w0, #1
	.loc	1 255 9                         ; src/main.c:255:9
	bl	_exit
Ltmp149:
LBB13_2:
	.loc	1 257 1                         ; src/main.c:257:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp150:
Lfunc_end13:
	.cfi_endproc
                                        ; -- End function
	.globl	_selectWordFromFile             ; -- Begin function selectWordFromFile
	.p2align	2
_selectWordFromFile:                    ; @selectWordFromFile
Lfunc_begin14:
	.loc	1 259 0                         ; src/main.c:259:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #72]
	mov	x0, #0
Ltmp151:
	.loc	1 260 11 prologue_end           ; src/main.c:260:11
	bl	_time
                                        ; kill: def $w0 killed $w0 killed $x0
	.loc	1 260 5 is_stmt 0               ; src/main.c:260:5
	bl	_srand
	.loc	1 261 21 is_stmt 1              ; src/main.c:261:21
	bl	_openFile
	.loc	1 261 11 is_stmt 0              ; src/main.c:261:11
	str	x0, [sp, #64]
	.loc	1 263 9 is_stmt 1               ; src/main.c:263:9
	str	wzr, [sp, #60]
	.loc	1 264 11                        ; src/main.c:264:11
	str	xzr, [sp, #48]
	.loc	1 266 5                         ; src/main.c:266:5
	b	LBB14_1
LBB14_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 266 38 is_stmt 0              ; src/main.c:266:38
	ldr	x2, [sp, #64]
	add	x0, sp, #84
	mov	w1, #100
	.loc	1 266 12                        ; src/main.c:266:12
	bl	_fgets
	.loc	1 266 47                        ; src/main.c:266:47
	subs	x8, x0, #0
	cset	w8, eq
	.loc	1 266 5                         ; src/main.c:266:5
	tbnz	w8, #0, LBB14_5
	b	LBB14_2
LBB14_2:                                ;   in Loop: Header=BB14_1 Depth=1
Ltmp152:
	.loc	1 267 26 is_stmt 1              ; src/main.c:267:26
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	str	w8, [sp, #60]
	.loc	1 269 28                        ; src/main.c:269:28
	bl	_rand
	.loc	1 269 13 is_stmt 0              ; src/main.c:269:13
	str	w0, [sp, #44]
	.loc	1 270 25 is_stmt 1              ; src/main.c:270:25
	ldr	w8, [sp, #44]
	.loc	1 270 40 is_stmt 0              ; src/main.c:270:40
	ldr	w10, [sp, #60]
	.loc	1 270 38                        ; src/main.c:270:38
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	.loc	1 270 13                        ; src/main.c:270:13
	str	w8, [sp, #40]
Ltmp153:
	.loc	1 273 13 is_stmt 1              ; src/main.c:273:13
	ldr	w8, [sp, #40]
	.loc	1 273 23 is_stmt 0              ; src/main.c:273:23
	subs	w8, w8, #0
	cset	w8, ne
Ltmp154:
	.loc	1 273 13                        ; src/main.c:273:13
	tbnz	w8, #0, LBB14_4
	b	LBB14_3
LBB14_3:                                ;   in Loop: Header=BB14_1 Depth=1
Ltmp155:
	.loc	1 274 18 is_stmt 1              ; src/main.c:274:18
	ldr	x0, [sp, #48]
	.loc	1 274 13 is_stmt 0              ; src/main.c:274:13
	bl	_free
	add	x0, sp, #84
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	.loc	1 275 36 is_stmt 1              ; src/main.c:275:36
	bl	_strlen
	.loc	1 275 49 is_stmt 0              ; src/main.c:275:49
	add	x0, x0, #1
	.loc	1 275 29                        ; src/main.c:275:29
	bl	_malloc
	.loc	1 275 27                        ; src/main.c:275:27
	str	x0, [sp, #48]
	.loc	1 276 32 is_stmt 1              ; src/main.c:276:32
	ldr	x0, [sp, #48]
	.loc	1 276 13 is_stmt 0              ; src/main.c:276:13
	bl	_checkMallocSuccess
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	.loc	1 277 13 is_stmt 1              ; src/main.c:277:13
	ldr	x0, [sp, #48]
	mov	x2, #-1
	bl	___strcpy_chk
	.loc	1 278 9                         ; src/main.c:278:9
	b	LBB14_4
Ltmp156:
LBB14_4:                                ;   in Loop: Header=BB14_1 Depth=1
	.loc	1 266 5                         ; src/main.c:266:5
	b	LBB14_1
LBB14_5:
	.loc	1 281 26                        ; src/main.c:281:26
	ldr	x0, [sp, #48]
	.loc	1 281 19 is_stmt 0              ; src/main.c:281:19
	bl	_strlen
	.loc	1 281 41                        ; src/main.c:281:41
	add	x0, x0, #1
	.loc	1 281 12                        ; src/main.c:281:12
	bl	_malloc
	.loc	1 281 10                        ; src/main.c:281:10
	str	x0, [sp, #72]
	.loc	1 282 5 is_stmt 1               ; src/main.c:282:5
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #48]
	mov	x2, #-1
	bl	___strcpy_chk
Ltmp157:
	.loc	1 283 9                         ; src/main.c:283:9
	ldr	x8, [sp, #72]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	.loc	1 283 21 is_stmt 0              ; src/main.c:283:21
	ldr	x0, [sp, #72]
	.loc	1 283 14                        ; src/main.c:283:14
	bl	_strlen
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	.loc	1 283 27                        ; src/main.c:283:27
	subs	x9, x0, #1
	.loc	1 283 9                         ; src/main.c:283:9
	ldrsb	w8, [x8, x9]
	.loc	1 283 32                        ; src/main.c:283:32
	subs	w8, w8, #10
	cset	w8, ne
Ltmp158:
	.loc	1 283 9                         ; src/main.c:283:9
	tbnz	w8, #0, LBB14_7
	b	LBB14_6
LBB14_6:
Ltmp159:
	.loc	1 284 17 is_stmt 1              ; src/main.c:284:17
	ldr	x8, [sp, #72]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	.loc	1 284 29 is_stmt 0              ; src/main.c:284:29
	ldr	x0, [sp, #72]
	.loc	1 284 22                        ; src/main.c:284:22
	bl	_strlen
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	.loc	1 284 35                        ; src/main.c:284:35
	subs	x9, x0, #1
	.loc	1 284 17                        ; src/main.c:284:17
	add	x8, x8, x9
	.loc	1 284 40                        ; src/main.c:284:40
	strb	wzr, [x8]
	.loc	1 285 13 is_stmt 1              ; src/main.c:285:13
	b	LBB14_7
Ltmp160:
LBB14_7:
	.loc	1 286 10                        ; src/main.c:286:10
	ldr	x0, [sp, #48]
	.loc	1 286 5 is_stmt 0               ; src/main.c:286:5
	bl	_free
	.loc	1 287 12 is_stmt 1              ; src/main.c:287:12
	ldr	x0, [sp, #64]
	.loc	1 287 5 is_stmt 0               ; src/main.c:287:5
	bl	_fclose
	mov	w0, #750
	.loc	1 288 5 is_stmt 1               ; src/main.c:288:5
	bl	_delay
	.loc	1 289 12                        ; src/main.c:289:12
	ldr	x8, [sp, #72]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	.loc	1 289 5 is_stmt 0               ; src/main.c:289:5
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB14_9
	b	LBB14_8
LBB14_8:
	bl	___stack_chk_fail
LBB14_9:
	.loc	1 0 5                           ; src/main.c:0:5
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	.loc	1 289 5                         ; src/main.c:289:5
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
Ltmp161:
Lfunc_end14:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin15:
	.loc	1 293 0 is_stmt 1               ; src/main.c:293:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
                                        ; kill: def $x8 killed $xzr
Ltmp162:
	.loc	1 294 11 prologue_end           ; src/main.c:294:11
	str	xzr, [sp, #16]
	.loc	1 295 16                        ; src/main.c:295:16
	bl	_gameMode
	.loc	1 295 9 is_stmt 0               ; src/main.c:295:9
	str	w0, [sp, #12]
Ltmp163:
	.loc	1 296 9 is_stmt 1               ; src/main.c:296:9
	ldr	w8, [sp, #12]
	.loc	1 296 14 is_stmt 0              ; src/main.c:296:14
	subs	w8, w8, #1
	cset	w8, ne
Ltmp164:
	.loc	1 296 9                         ; src/main.c:296:9
	tbnz	w8, #0, LBB15_2
	b	LBB15_1
LBB15_1:
Ltmp165:
	.loc	1 297 35 is_stmt 1              ; src/main.c:297:35
	ldr	x0, [sp, #16]
	.loc	1 297 16 is_stmt 0              ; src/main.c:297:16
	bl	_selectWordFromFile
	.loc	1 297 14                        ; src/main.c:297:14
	str	x0, [sp, #16]
	.loc	1 298 5 is_stmt 1               ; src/main.c:298:5
	b	LBB15_3
Ltmp166:
LBB15_2:
	.loc	1 299 9                         ; src/main.c:299:9
	bl	_clearConsole
	.loc	1 300 16                        ; src/main.c:300:16
	bl	_getWordFromUser
	.loc	1 300 14 is_stmt 0              ; src/main.c:300:14
	str	x0, [sp, #16]
	b	LBB15_3
Ltmp167:
LBB15_3:
	.loc	1 302 29 is_stmt 1              ; src/main.c:302:29
	ldr	x0, [sp, #16]
	.loc	1 302 22 is_stmt 0              ; src/main.c:302:22
	bl	_strlen
	.loc	1 302 9                         ; src/main.c:302:9
	mov	x8, x0
	str	w8, [sp, #8]
	.loc	1 303 5 is_stmt 1               ; src/main.c:303:5
	bl	_clearConsole
	.loc	1 304 36                        ; src/main.c:304:36
	ldr	w0, [sp, #8]
	.loc	1 304 26 is_stmt 0              ; src/main.c:304:26
	bl	_startGame
	.loc	1 304 11                        ; src/main.c:304:11
	str	x0, [sp]
	.loc	1 305 13 is_stmt 1              ; src/main.c:305:13
	ldr	x0, [sp, #16]
	.loc	1 305 19 is_stmt 0              ; src/main.c:305:19
	ldr	w1, [sp, #8]
	.loc	1 305 31                        ; src/main.c:305:31
	ldr	x2, [sp]
	.loc	1 305 5                         ; src/main.c:305:5
	bl	_guesses
	.loc	1 308 10 is_stmt 1              ; src/main.c:308:10
	ldr	x0, [sp]
	.loc	1 308 5 is_stmt 0               ; src/main.c:308:5
	bl	_free
                                        ; kill: def $x8 killed $xzr
	.loc	1 309 18 is_stmt 1              ; src/main.c:309:18
	str	xzr, [sp]
	.loc	1 310 10                        ; src/main.c:310:10
	ldr	x0, [sp, #16]
	.loc	1 310 5 is_stmt 0               ; src/main.c:310:5
	bl	_free
	.loc	1 311 10 is_stmt 1              ; src/main.c:311:10
	str	xzr, [sp, #16]
	mov	w0, #0
	.loc	1 312 5                         ; src/main.c:312:5
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp168:
Lfunc_end15:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"clear"

l_.str.1:                               ; @.str.1
	.asciz	"_"

l_.str.2:                               ; @.str.2
	.asciz	"\n\n\n\n\n\n\n\n  -------------"

l_.str.3:                               ; @.str.3
	.asciz	"\n        |\n        |\n        |\n        |\n        |\n        |\n        |\n  -------------"

l_.str.4:                               ; @.str.4
	.asciz	"        +----------+\n        |\n        |\n        |\n        |\n        |\n        |\n        |\n  -------------"

l_.str.5:                               ; @.str.5
	.asciz	"        +----------+\n        |          |\n        |          |\n        |\n        |\n        |\n        |\n        |\n  -------------"

l_.str.6:                               ; @.str.6
	.asciz	"        +----------+\n        |          |\n        |          |\n        |          O\n        |\n        |\n        |\n        |\n  -------------"

l_.str.7:                               ; @.str.7
	.asciz	"        +----------+\n        |          |\n        |          |\n        |          O\n        |          |\n        |\n        |\n        |\n  -------------"

l_.str.8:                               ; @.str.8
	.asciz	"        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\n        |\n        |\n        |\n  -------------"

l_.str.9:                               ; @.str.9
	.asciz	"        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\\\n        |\n        |\n        |\n  -------------"

l_.str.10:                              ; @.str.10
	.asciz	"        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\\\n        |         /\n        |\n        |\n  -------------"

l_.str.11:                              ; @.str.11
	.asciz	"        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\\\n        |         / \\\n        |\n        |\n  -------------"

	.section	__DATA,__data
	.globl	_hangmanImages                  ; @hangmanImages
	.p2align	3, 0x0
_hangmanImages:
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11

	.section	__TEXT,__cstring,cstring_literals
l_.str.12:                              ; @.str.12
	.asciz	"Error: Word cannot contain spaces\n"

l_.str.13:                              ; @.str.13
	.asciz	"Error: Word can only contain letters\n"

l_.str.14:                              ; @.str.14
	.asciz	"1. Single player\n2. Multiplayer\n"

l_.str.15:                              ; @.str.15
	.asciz	"%4d"

l_.str.16:                              ; @.str.16
	.asciz	"Invalid input\n"

l_.str.17:                              ; @.str.17
	.asciz	"Enter a word: "

l_.str.18:                              ; @.str.18
	.asciz	"%100[^\n]"

l_.str.19:                              ; @.str.19
	.asciz	"\nGuessed letters: %s"

l_.str.20:                              ; @.str.20
	.asciz	"\n%s"

l_.str.21:                              ; @.str.21
	.asciz	"\nWord: %s"

l_.str.22:                              ; @.str.22
	.asciz	"\nYou win\n"

l_.str.23:                              ; @.str.23
	.asciz	"\nWord: %s\n"

l_.str.24:                              ; @.str.24
	.asciz	"The word was %s\n"

l_.str.25:                              ; @.str.25
	.asciz	"\nYou lose\n"

l_.str.26:                              ; @.str.26
	.asciz	", "

l_.str.27:                              ; @.str.27
	.space	1

l_.str.28:                              ; @.str.28
	.asciz	"\nGuess: "

l_.str.29:                              ; @.str.29
	.asciz	"%50s"

l_.str.30:                              ; @.str.30
	.asciz	"\nYou already guessed %s\n"

l_.str.31:                              ; @.str.31
	.asciz	"\n%s is correct\n"

l_.str.32:                              ; @.str.32
	.asciz	"\n%s is not in the word\n"

l_.str.33:                              ; @.str.33
	.asciz	"\n%s is not the word\n"

l_.str.34:                              ; @.str.34
	.asciz	"include/wordBank.txt"

l_.str.35:                              ; @.str.35
	.asciz	"r"

l_.str.36:                              ; @.str.36
	.asciz	"Error: File cannot be read\n"

l_.str.37:                              ; @.str.37
	.asciz	"Error: Memory allocation failed\n"

	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "_stdio.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys" "_types.h"
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	21                              ; DW_TAG_subroutine_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xbb5 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	57                              ; DW_AT_LLVM_sysroot
	.long	109                             ; DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	120                             ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end15-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str
	.byte	3                               ; Abbrev [3] 0x43:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x48:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	6                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x4f:0x7 DW_TAG_base_type
	.long	185                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	190                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x5d:0x11 DW_TAG_variable
	.long	110                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.1
	.byte	3                               ; Abbrev [3] 0x6e:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x73:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	2                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x7a:0x11 DW_TAG_variable
	.long	139                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.2
	.byte	3                               ; Abbrev [3] 0x8b:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x90:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	24                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x97:0x11 DW_TAG_variable
	.long	168                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	50                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.3
	.byte	3                               ; Abbrev [3] 0xa8:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xad:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	87                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb4:0x11 DW_TAG_variable
	.long	197                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.4
	.byte	3                               ; Abbrev [3] 0xc5:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xca:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	107                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xd1:0x11 DW_TAG_variable
	.long	226                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	52                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.5
	.byte	3                               ; Abbrev [3] 0xe2:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xe7:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	129                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xee:0x11 DW_TAG_variable
	.long	255                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.6
	.byte	3                               ; Abbrev [3] 0xff:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x104:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	140                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x10b:0x11 DW_TAG_variable
	.long	284                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.7
	.byte	3                               ; Abbrev [3] 0x11c:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x121:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	151                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x128:0x11 DW_TAG_variable
	.long	284                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.8
	.byte	2                               ; Abbrev [2] 0x139:0x11 DW_TAG_variable
	.long	330                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	56                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.9
	.byte	3                               ; Abbrev [3] 0x14a:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x14f:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	152                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x156:0x11 DW_TAG_variable
	.long	359                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.10
	.byte	3                               ; Abbrev [3] 0x167:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x16c:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	162                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x173:0x11 DW_TAG_variable
	.long	388                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	58                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.11
	.byte	3                               ; Abbrev [3] 0x184:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x189:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	164                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x190:0x15 DW_TAG_variable
	.long	211                             ; DW_AT_name
	.long	421                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	1                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	_hangmanImages
	.byte	8                               ; Abbrev [8] 0x1a5:0xb DW_TAG_typedef
	.long	432                             ; DW_AT_type
	.long	225                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x1b0:0xc DW_TAG_array_type
	.long	444                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x1b5:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	10                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x1bc:0x5 DW_TAG_pointer_type
	.long	79                              ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x1c1:0x11 DW_TAG_variable
	.long	466                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	77                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.12
	.byte	3                               ; Abbrev [3] 0x1d2:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x1d7:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	35                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1de:0x11 DW_TAG_variable
	.long	495                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.13
	.byte	3                               ; Abbrev [3] 0x1ef:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x1f4:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	38                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1fb:0x11 DW_TAG_variable
	.long	524                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	91                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.14
	.byte	3                               ; Abbrev [3] 0x20c:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x211:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	33                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x218:0x11 DW_TAG_variable
	.long	553                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.15
	.byte	3                               ; Abbrev [3] 0x229:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x22e:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	4                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x235:0x11 DW_TAG_variable
	.long	582                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.16
	.byte	3                               ; Abbrev [3] 0x246:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x24b:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	15                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x252:0x11 DW_TAG_variable
	.long	582                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	109                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.17
	.byte	2                               ; Abbrev [2] 0x263:0x11 DW_TAG_variable
	.long	628                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	110                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.18
	.byte	3                               ; Abbrev [3] 0x274:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x279:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	9                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x280:0x11 DW_TAG_variable
	.long	657                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	137                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.19
	.byte	3                               ; Abbrev [3] 0x291:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x296:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	21                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x29d:0x11 DW_TAG_variable
	.long	553                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	138                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.20
	.byte	2                               ; Abbrev [2] 0x2ae:0x11 DW_TAG_variable
	.long	703                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	140                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.21
	.byte	3                               ; Abbrev [3] 0x2bf:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x2c4:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	10                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x2cb:0x11 DW_TAG_variable
	.long	703                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	141                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.22
	.byte	2                               ; Abbrev [2] 0x2dc:0x11 DW_TAG_variable
	.long	749                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	143                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.23
	.byte	3                               ; Abbrev [3] 0x2ed:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x2f2:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	11                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x2f9:0x11 DW_TAG_variable
	.long	778                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	144                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.24
	.byte	3                               ; Abbrev [3] 0x30a:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x30f:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	17                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x316:0x11 DW_TAG_variable
	.long	749                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.25
	.byte	2                               ; Abbrev [2] 0x327:0x11 DW_TAG_variable
	.long	824                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	162                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.26
	.byte	3                               ; Abbrev [3] 0x338:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x33d:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	3                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x344:0x11 DW_TAG_variable
	.long	853                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	174                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.27
	.byte	3                               ; Abbrev [3] 0x355:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x35a:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	1                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x361:0x11 DW_TAG_variable
	.long	628                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	184                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.28
	.byte	2                               ; Abbrev [2] 0x372:0x11 DW_TAG_variable
	.long	899                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	185                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.29
	.byte	3                               ; Abbrev [3] 0x383:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x388:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	5                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x38f:0x11 DW_TAG_variable
	.long	928                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	193                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.30
	.byte	3                               ; Abbrev [3] 0x3a0:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x3a5:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	25                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x3ac:0x11 DW_TAG_variable
	.long	957                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	208                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.31
	.byte	3                               ; Abbrev [3] 0x3bd:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x3c2:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x3c9:0x11 DW_TAG_variable
	.long	139                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	212                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.32
	.byte	2                               ; Abbrev [2] 0x3da:0x11 DW_TAG_variable
	.long	657                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	229                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.33
	.byte	2                               ; Abbrev [2] 0x3eb:0x11 DW_TAG_variable
	.long	657                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	244                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.34
	.byte	2                               ; Abbrev [2] 0x3fc:0x11 DW_TAG_variable
	.long	110                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	244                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.35
	.byte	2                               ; Abbrev [2] 0x40d:0x11 DW_TAG_variable
	.long	1054                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	246                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.36
	.byte	3                               ; Abbrev [3] 0x41e:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x423:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	28                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x42a:0x11 DW_TAG_variable
	.long	524                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	254                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.37
	.byte	8                               ; Abbrev [8] 0x43b:0xb DW_TAG_typedef
	.long	1094                            ; DW_AT_type
	.long	239                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0x446:0xb DW_TAG_typedef
	.long	1105                            ; DW_AT_type
	.long	247                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	95                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x451:0x7 DW_TAG_base_type
	.long	264                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	10                              ; Abbrev [10] 0x458:0x1 DW_TAG_pointer_type
	.byte	11                              ; Abbrev [11] 0x459:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset4
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	278                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	12                              ; Abbrev [12] 0x46e:0x32 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset5, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset5
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	290                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x483:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.long	717                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	2966                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x491:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	0
	.long	743                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.long	1083                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x4a0:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset6, Lfunc_end2-Lfunc_begin2     ; DW_AT_high_pc
	.long	Lset6
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	296                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	15                              ; Abbrev [15] 0x4b5:0xc2 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset7, Lfunc_end3-Lfunc_begin3     ; DW_AT_high_pc
	.long	Lset7
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	309                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	444                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x4ce:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.long	749                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x4dc:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	2922                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x4ea:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	104
	.long	765                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x4f8:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	103
	.long	780                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	2457                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x506:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	794                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x514:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	20
	.long	807                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x522:0x54 DW_TAG_lexical_block
	.quad	Ltmp7                           ; DW_AT_low_pc
.set Lset8, Ltmp24-Ltmp7                ; DW_AT_high_pc
	.long	Lset8
	.byte	14                              ; Abbrev [14] 0x52f:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	820                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x53d:0x38 DW_TAG_lexical_block
	.quad	Ltmp11                          ; DW_AT_low_pc
.set Lset9, Ltmp19-Ltmp11               ; DW_AT_high_pc
	.long	Lset9
	.byte	14                              ; Abbrev [14] 0x54a:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	822                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x558:0x1c DW_TAG_lexical_block
	.quad	Ltmp16                          ; DW_AT_low_pc
.set Lset10, Ltmp17-Ltmp16              ; DW_AT_high_pc
	.long	Lset10
	.byte	14                              ; Abbrev [14] 0x565:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	10
	.long	824                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.long	110                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x577:0x60 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset11, Lfunc_end4-Lfunc_begin4    ; DW_AT_high_pc
	.long	Lset11
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	328                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	2457                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x590:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	2922                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x59e:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	15
	.long	829                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	79                              ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x5ac:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	749                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x5ba:0x1c DW_TAG_lexical_block
	.quad	Ltmp27                          ; DW_AT_low_pc
.set Lset12, Ltmp35-Ltmp27              ; DW_AT_high_pc
	.long	Lset12
	.byte	14                              ; Abbrev [14] 0x5c7:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	4
	.long	820                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x5d7:0x52 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset13, Lfunc_end5-Lfunc_begin5    ; DW_AT_high_pc
	.long	Lset13
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	342                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	2457                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x5f0:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x5fe:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	749                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x60c:0x1c DW_TAG_lexical_block
	.quad	Ltmp38                          ; DW_AT_low_pc
.set Lset14, Ltmp50-Ltmp38              ; DW_AT_high_pc
	.long	Lset14
	.byte	14                              ; Abbrev [14] 0x619:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	820                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	74                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	17                              ; Abbrev [17] 0x629:0x36 DW_TAG_subprogram
	.quad	Lfunc_begin6                    ; DW_AT_low_pc
.set Lset15, Lfunc_end6-Lfunc_begin6    ; DW_AT_high_pc
	.long	Lset15
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	352                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	89                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	14                              ; Abbrev [14] 0x642:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	836                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x650:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	116
	.long	841                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	17                              ; Abbrev [17] 0x65f:0x36 DW_TAG_subprogram
	.quad	Lfunc_begin7                    ; DW_AT_low_pc
.set Lset16, Lfunc_end7-Lfunc_begin7    ; DW_AT_high_pc
	.long	Lset16
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	361                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	106                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	14                              ; Abbrev [14] 0x678:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	108                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x686:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	841                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	110                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x695:0x60 DW_TAG_subprogram
	.quad	Lfunc_begin8                    ; DW_AT_low_pc
.set Lset17, Lfunc_end8-Lfunc_begin8    ; DW_AT_high_pc
	.long	Lset17
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	377                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	125                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	444                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x6ae:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.long	749                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	125                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x6bc:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	848                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	126                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x6ca:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	859                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	127                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x6d8:0x1c DW_TAG_lexical_block
	.quad	Ltmp72                          ; DW_AT_low_pc
.set Lset18, Ltmp77-Ltmp72              ; DW_AT_high_pc
	.long	Lset18
	.byte	14                              ; Abbrev [14] 0x6e5:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	820                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	129                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x6f5:0x5c DW_TAG_subprogram
	.quad	Lfunc_begin9                    ; DW_AT_low_pc
.set Lset19, Lfunc_end9-Lfunc_begin9    ; DW_AT_high_pc
	.long	Lset19
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	387                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x70a:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.long	820                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x718:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	871                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x726:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	794                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.long	2922                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x734:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.long	2922                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x742:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	895                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x751:0x7c DW_TAG_subprogram
	.quad	Lfunc_begin10                   ; DW_AT_low_pc
.set Lset20, Lfunc_end10-Lfunc_begin10  ; DW_AT_high_pc
	.long	Lset20
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	404                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	149                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	444                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x76a:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	765                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	149                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x778:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	116
	.long	903                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	151                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x786:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	871                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	152                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x794:0x38 DW_TAG_lexical_block
	.quad	Ltmp87                          ; DW_AT_low_pc
.set Lset21, Ltmp96-Ltmp87              ; DW_AT_high_pc
	.long	Lset21
	.byte	14                              ; Abbrev [14] 0x7a1:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	4
	.long	820                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	157                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x7af:0x1c DW_TAG_lexical_block
	.quad	Ltmp90                          ; DW_AT_low_pc
.set Lset22, Ltmp95-Ltmp90              ; DW_AT_high_pc
	.long	Lset22
	.byte	14                              ; Abbrev [14] 0x7bc:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	2
	.long	824                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	158                             ; DW_AT_decl_line
	.long	110                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x7cd:0x94 DW_TAG_subprogram
	.quad	Lfunc_begin11                   ; DW_AT_low_pc
.set Lset23, Lfunc_end11-Lfunc_begin11  ; DW_AT_high_pc
	.long	Lset23
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	427                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	169                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x7e2:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	56
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	169                             ; DW_AT_decl_line
	.long	2922                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x7f0:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	52
	.long	749                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	169                             ; DW_AT_decl_line
	.long	2978                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x7fe:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	40
	.long	794                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	169                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x80c:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	36
	.long	820                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	170                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x81a:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	69
	.long	924                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	171                             ; DW_AT_decl_line
	.long	2983                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x828:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	765                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x836:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	871                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	174                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x844:0x1c DW_TAG_lexical_block
	.quad	Ltmp99                          ; DW_AT_low_pc
.set Lset24, Ltmp138-Ltmp99             ; DW_AT_high_pc
	.long	Lset24
	.byte	14                              ; Abbrev [14] 0x851:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	841                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	185                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	17                              ; Abbrev [17] 0x861:0x28 DW_TAG_subprogram
	.quad	Lfunc_begin12                   ; DW_AT_low_pc
.set Lset25, Lfunc_end12-Lfunc_begin12  ; DW_AT_high_pc
	.long	Lset25
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	435                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	243                             ; DW_AT_decl_line
	.long	2471                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	14                              ; Abbrev [14] 0x87a:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	930                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	244                             ; DW_AT_decl_line
	.long	2471                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x889:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin13                   ; DW_AT_low_pc
.set Lset26, Lfunc_end13-Lfunc_begin13  ; DW_AT_high_pc
	.long	Lset26
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	444                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	252                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	13                              ; Abbrev [13] 0x89e:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	938                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	252                             ; DW_AT_decl_line
	.long	1112                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0x8ad:0x95 DW_TAG_subprogram
	.quad	Lfunc_begin14                   ; DW_AT_low_pc
.set Lset27, Lfunc_end14-Lfunc_begin14  ; DW_AT_high_pc
	.long	Lset27
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	463                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	259                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	444                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	19                              ; Abbrev [19] 0x8c7:0x10 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	259                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x8d7:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\300"
	.long	930                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	261                             ; DW_AT_decl_line
	.long	2471                            ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x8e7:0x10 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\324"
	.long	946                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	262                             ; DW_AT_decl_line
	.long	2995                            ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x8f7:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	60
	.long	951                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	263                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x906:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	48
	.long	969                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	264                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x915:0x2c DW_TAG_lexical_block
	.quad	Ltmp152                         ; DW_AT_low_pc
.set Lset28, Ltmp156-Ltmp152            ; DW_AT_high_pc
	.long	Lset28
	.byte	20                              ; Abbrev [20] 0x922:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	44
	.long	983                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	269                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x931:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	40
	.long	996                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	270                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x942:0x57 DW_TAG_subprogram
	.quad	Lfunc_begin15                   ; DW_AT_low_pc
.set Lset29, Lfunc_end15-Lfunc_begin15  ; DW_AT_high_pc
	.long	Lset29
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	482                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	293                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
                                        ; DW_AT_external
	.byte	20                              ; Abbrev [20] 0x95c:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	760                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	294                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x96b:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	12
	.long	836                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	295                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x97a:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	749                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	302                             ; DW_AT_decl_line
	.long	2464                            ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x989:0xf DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	0
	.long	794                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.short	304                             ; DW_AT_decl_line
	.long	444                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x999:0x7 DW_TAG_base_type
	.long	487                             ; DW_AT_name
	.byte	2                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0x9a0:0x7 DW_TAG_base_type
	.long	493                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0x9a7:0x5 DW_TAG_pointer_type
	.long	2476                            ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x9ac:0xb DW_TAG_typedef
	.long	2487                            ; DW_AT_type
	.long	497                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	157                             ; DW_AT_decl_line
	.byte	22                              ; Abbrev [22] 0x9b7:0xf9 DW_TAG_structure_type
	.long	502                             ; DW_AT_name
	.byte	152                             ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	126                             ; DW_AT_decl_line
	.byte	23                              ; Abbrev [23] 0x9bf:0xc DW_TAG_member
	.long	510                             ; DW_AT_name
	.long	2736                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	127                             ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0x9cb:0xc DW_TAG_member
	.long	527                             ; DW_AT_name
	.long	2464                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	128                             ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0x9d7:0xc DW_TAG_member
	.long	530                             ; DW_AT_name
	.long	2464                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	129                             ; DW_AT_decl_line
	.byte	12                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0x9e3:0xc DW_TAG_member
	.long	533                             ; DW_AT_name
	.long	2748                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	130                             ; DW_AT_decl_line
	.byte	16                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0x9ef:0xc DW_TAG_member
	.long	546                             ; DW_AT_name
	.long	2748                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.byte	18                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0x9fb:0xc DW_TAG_member
	.long	552                             ; DW_AT_name
	.long	2755                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	132                             ; DW_AT_decl_line
	.byte	24                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa07:0xc DW_TAG_member
	.long	575                             ; DW_AT_name
	.long	2464                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	133                             ; DW_AT_decl_line
	.byte	40                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa13:0xc DW_TAG_member
	.long	584                             ; DW_AT_name
	.long	1112                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	136                             ; DW_AT_decl_line
	.byte	48                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa1f:0xc DW_TAG_member
	.long	592                             ; DW_AT_name
	.long	2788                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	137                             ; DW_AT_decl_line
	.byte	56                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa2b:0xc DW_TAG_member
	.long	599                             ; DW_AT_name
	.long	2804                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	138                             ; DW_AT_decl_line
	.byte	64                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa37:0xc DW_TAG_member
	.long	605                             ; DW_AT_name
	.long	2830                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	139                             ; DW_AT_decl_line
	.byte	72                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa43:0xc DW_TAG_member
	.long	653                             ; DW_AT_name
	.long	2896                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	140                             ; DW_AT_decl_line
	.byte	80                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa4f:0xc DW_TAG_member
	.long	660                             ; DW_AT_name
	.long	2755                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	143                             ; DW_AT_decl_line
	.byte	88                              ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa5b:0xc DW_TAG_member
	.long	664                             ; DW_AT_name
	.long	2932                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	144                             ; DW_AT_decl_line
	.byte	104                             ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa67:0xc DW_TAG_member
	.long	680                             ; DW_AT_name
	.long	2464                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.byte	112                             ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa73:0xc DW_TAG_member
	.long	684                             ; DW_AT_name
	.long	2942                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	148                             ; DW_AT_decl_line
	.byte	116                             ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa7f:0xc DW_TAG_member
	.long	690                             ; DW_AT_name
	.long	2954                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	149                             ; DW_AT_decl_line
	.byte	119                             ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa8b:0xc DW_TAG_member
	.long	696                             ; DW_AT_name
	.long	2755                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	152                             ; DW_AT_decl_line
	.byte	120                             ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xa97:0xc DW_TAG_member
	.long	700                             ; DW_AT_name
	.long	2464                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	155                             ; DW_AT_decl_line
	.byte	136                             ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xaa3:0xc DW_TAG_member
	.long	709                             ; DW_AT_name
	.long	2856                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	156                             ; DW_AT_decl_line
	.byte	144                             ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xab0:0x5 DW_TAG_pointer_type
	.long	2741                            ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0xab5:0x7 DW_TAG_base_type
	.long	513                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0xabc:0x7 DW_TAG_base_type
	.long	540                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	22                              ; Abbrev [22] 0xac3:0x21 DW_TAG_structure_type
	.long	556                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.byte	23                              ; Abbrev [23] 0xacb:0xc DW_TAG_member
	.long	563                             ; DW_AT_name
	.long	2736                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	93                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	23                              ; Abbrev [23] 0xad7:0xc DW_TAG_member
	.long	569                             ; DW_AT_name
	.long	2464                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xae4:0x5 DW_TAG_pointer_type
	.long	2793                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0xae9:0xb DW_TAG_subroutine_type
	.long	2464                            ; DW_AT_type
                                        ; DW_AT_prototyped
	.byte	25                              ; Abbrev [25] 0xaee:0x5 DW_TAG_formal_parameter
	.long	1112                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xaf4:0x5 DW_TAG_pointer_type
	.long	2809                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0xaf9:0x15 DW_TAG_subroutine_type
	.long	2464                            ; DW_AT_type
                                        ; DW_AT_prototyped
	.byte	25                              ; Abbrev [25] 0xafe:0x5 DW_TAG_formal_parameter
	.long	1112                            ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0xb03:0x5 DW_TAG_formal_parameter
	.long	444                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0xb08:0x5 DW_TAG_formal_parameter
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xb0e:0x5 DW_TAG_pointer_type
	.long	2835                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0xb13:0x15 DW_TAG_subroutine_type
	.long	2856                            ; DW_AT_type
                                        ; DW_AT_prototyped
	.byte	25                              ; Abbrev [25] 0xb18:0x5 DW_TAG_formal_parameter
	.long	1112                            ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0xb1d:0x5 DW_TAG_formal_parameter
	.long	2856                            ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0xb22:0x5 DW_TAG_formal_parameter
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0xb28:0xb DW_TAG_typedef
	.long	2867                            ; DW_AT_type
	.long	611                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	81                              ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0xb33:0xb DW_TAG_typedef
	.long	2878                            ; DW_AT_type
	.long	618                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0xb3e:0xb DW_TAG_typedef
	.long	2889                            ; DW_AT_type
	.long	633                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	24                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xb49:0x7 DW_TAG_base_type
	.long	643                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0xb50:0x5 DW_TAG_pointer_type
	.long	2901                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0xb55:0x15 DW_TAG_subroutine_type
	.long	2464                            ; DW_AT_type
                                        ; DW_AT_prototyped
	.byte	25                              ; Abbrev [25] 0xb5a:0x5 DW_TAG_formal_parameter
	.long	1112                            ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0xb5f:0x5 DW_TAG_formal_parameter
	.long	2922                            ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0xb64:0x5 DW_TAG_formal_parameter
	.long	2464                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xb6a:0x5 DW_TAG_pointer_type
	.long	2927                            ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0xb6f:0x5 DW_TAG_const_type
	.long	79                              ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xb74:0x5 DW_TAG_pointer_type
	.long	2937                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0xb79:0x5 DW_TAG_structure_type
	.long	671                             ; DW_AT_name
                                        ; DW_AT_declaration
	.byte	3                               ; Abbrev [3] 0xb7e:0xc DW_TAG_array_type
	.long	2741                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xb83:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	3                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0xb8a:0xc DW_TAG_array_type
	.long	2741                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xb8f:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	1                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0xb96:0x5 DW_TAG_const_type
	.long	2971                            ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0xb9b:0x7 DW_TAG_base_type
	.long	730                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0xba2:0x5 DW_TAG_const_type
	.long	2464                            ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0xba7:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xbac:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	51                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0xbb3:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xbb8:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	100                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"src/main.c"                    ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=57
	.asciz	"MacOSX.sdk"                    ; string offset=109
	.asciz	"/Users/annaedwards/Desktop/Kid's things/Danny/Personal/Hangman_C" ; string offset=120
	.asciz	"char"                          ; string offset=185
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=190
	.byte	0                               ; string offset=210
	.asciz	"hangmanImages"                 ; string offset=211
	.asciz	"HangmanImages"                 ; string offset=225
	.asciz	"clock_t"                       ; string offset=239
	.asciz	"__darwin_clock_t"              ; string offset=247
	.asciz	"unsigned long"                 ; string offset=264
	.asciz	"clear_stdin"                   ; string offset=278
	.asciz	"delay"                         ; string offset=290
	.asciz	"clearConsole"                  ; string offset=296
	.asciz	"createWordProgress"            ; string offset=309
	.asciz	"letterInArray"                 ; string offset=328
	.asciz	"checkWord"                     ; string offset=342
	.asciz	"gameMode"                      ; string offset=352
	.asciz	"getWordFromUser"               ; string offset=361
	.asciz	"startGame"                     ; string offset=377
	.asciz	"displayWinOrLoss"              ; string offset=387
	.asciz	"seperateGuessedLetters"        ; string offset=404
	.asciz	"guesses"                       ; string offset=427
	.asciz	"openFile"                      ; string offset=435
	.asciz	"checkMallocSuccess"            ; string offset=444
	.asciz	"selectWordFromFile"            ; string offset=463
	.asciz	"main"                          ; string offset=482
	.asciz	"_Bool"                         ; string offset=487
	.asciz	"int"                           ; string offset=493
	.asciz	"FILE"                          ; string offset=497
	.asciz	"__sFILE"                       ; string offset=502
	.asciz	"_p"                            ; string offset=510
	.asciz	"unsigned char"                 ; string offset=513
	.asciz	"_r"                            ; string offset=527
	.asciz	"_w"                            ; string offset=530
	.asciz	"_flags"                        ; string offset=533
	.asciz	"short"                         ; string offset=540
	.asciz	"_file"                         ; string offset=546
	.asciz	"_bf"                           ; string offset=552
	.asciz	"__sbuf"                        ; string offset=556
	.asciz	"_base"                         ; string offset=563
	.asciz	"_size"                         ; string offset=569
	.asciz	"_lbfsize"                      ; string offset=575
	.asciz	"_cookie"                       ; string offset=584
	.asciz	"_close"                        ; string offset=592
	.asciz	"_read"                         ; string offset=599
	.asciz	"_seek"                         ; string offset=605
	.asciz	"fpos_t"                        ; string offset=611
	.asciz	"__darwin_off_t"                ; string offset=618
	.asciz	"__int64_t"                     ; string offset=633
	.asciz	"long long"                     ; string offset=643
	.asciz	"_write"                        ; string offset=653
	.asciz	"_ub"                           ; string offset=660
	.asciz	"_extra"                        ; string offset=664
	.asciz	"__sFILEX"                      ; string offset=671
	.asciz	"_ur"                           ; string offset=680
	.asciz	"_ubuf"                         ; string offset=684
	.asciz	"_nbuf"                         ; string offset=690
	.asciz	"_lb"                           ; string offset=696
	.asciz	"_blksize"                      ; string offset=700
	.asciz	"_offset"                       ; string offset=709
	.asciz	"milliseconds"                  ; string offset=717
	.asciz	"unsigned int"                  ; string offset=730
	.asciz	"start"                         ; string offset=743
	.asciz	"wordLength"                    ; string offset=749
	.asciz	"word"                          ; string offset=760
	.asciz	"guessedLetters"                ; string offset=765
	.asciz	"letterGuessed"                 ; string offset=780
	.asciz	"wordProgress"                  ; string offset=794
	.asciz	"initalLength"                  ; string offset=807
	.asciz	"i"                             ; string offset=820
	.asciz	"j"                             ; string offset=822
	.asciz	"temp"                          ; string offset=824
	.asciz	"letter"                        ; string offset=829
	.asciz	"mode"                          ; string offset=836
	.asciz	"result"                        ; string offset=841
	.asciz	"maxGuesses"                    ; string offset=848
	.asciz	"guessedWord"                   ; string offset=859
	.asciz	"seperatedGuessedLetters"       ; string offset=871
	.asciz	"winCase"                       ; string offset=895
	.asciz	"guessedLettersLength"          ; string offset=903
	.asciz	"guess"                         ; string offset=924
	.asciz	"in_file"                       ; string offset=930
	.asciz	"pointer"                       ; string offset=938
	.asciz	"line"                          ; string offset=946
	.asciz	"maxLinesInTxtFile"             ; string offset=951
	.asciz	"wordReservoir"                 ; string offset=969
	.asciz	"randomNumber"                  ; string offset=983
	.asciz	"remainder"                     ; string offset=996
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	9                               ; Header Bucket Count
	.long	18                              ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.long	0                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	1                               ; Bucket 3
	.long	4                               ; Bucket 4
	.long	7                               ; Bucket 5
	.long	9                               ; Bucket 6
	.long	13                              ; Bucket 7
	.long	15                              ; Bucket 8
	.long	590796532                       ; Hash in Bucket 1
	.long	256494900                       ; Hash in Bucket 3
	.long	996532203                       ; Hash in Bucket 3
	.long	1371693396                      ; Hash in Bucket 3
	.long	-1863281331                     ; Hash in Bucket 4
	.long	-1735592310                     ; Hash in Bucket 4
	.long	-1427031585                     ; Hash in Bucket 4
	.long	160150613                       ; Hash in Bucket 5
	.long	1181041151                      ; Hash in Bucket 5
	.long	-1925125513                     ; Hash in Bucket 6
	.long	-1625822485                     ; Hash in Bucket 6
	.long	-1164768316                     ; Hash in Bucket 6
	.long	-634466419                      ; Hash in Bucket 6
	.long	348017092                       ; Hash in Bucket 7
	.long	2090499946                      ; Hash in Bucket 7
	.long	5381                            ; Hash in Bucket 8
	.long	1298219633                      ; Hash in Bucket 8
	.long	1686129461                      ; Hash in Bucket 8
.set Lset30, LNames8-Lnames_begin       ; Offset in Bucket 1
	.long	Lset30
.set Lset31, LNames16-Lnames_begin      ; Offset in Bucket 3
	.long	Lset31
.set Lset32, LNames4-Lnames_begin       ; Offset in Bucket 3
	.long	Lset32
.set Lset33, LNames11-Lnames_begin      ; Offset in Bucket 3
	.long	Lset33
.set Lset34, LNames7-Lnames_begin       ; Offset in Bucket 4
	.long	Lset34
.set Lset35, LNames13-Lnames_begin      ; Offset in Bucket 4
	.long	Lset35
.set Lset36, LNames10-Lnames_begin      ; Offset in Bucket 4
	.long	Lset36
.set Lset37, LNames1-Lnames_begin       ; Offset in Bucket 5
	.long	Lset37
.set Lset38, LNames15-Lnames_begin      ; Offset in Bucket 5
	.long	Lset38
.set Lset39, LNames5-Lnames_begin       ; Offset in Bucket 6
	.long	Lset39
.set Lset40, LNames3-Lnames_begin       ; Offset in Bucket 6
	.long	Lset40
.set Lset41, LNames17-Lnames_begin      ; Offset in Bucket 6
	.long	Lset41
.set Lset42, LNames12-Lnames_begin      ; Offset in Bucket 6
	.long	Lset42
.set Lset43, LNames2-Lnames_begin       ; Offset in Bucket 7
	.long	Lset43
.set Lset44, LNames6-Lnames_begin       ; Offset in Bucket 7
	.long	Lset44
.set Lset45, LNames14-Lnames_begin      ; Offset in Bucket 8
	.long	Lset45
.set Lset46, LNames9-Lnames_begin       ; Offset in Bucket 8
	.long	Lset46
.set Lset47, LNames0-Lnames_begin       ; Offset in Bucket 8
	.long	Lset47
LNames8:
	.long	444                             ; checkMallocSuccess
	.long	1                               ; Num DIEs
	.long	2185
	.long	0
LNames16:
	.long	290                             ; delay
	.long	1                               ; Num DIEs
	.long	1134
	.long	0
LNames4:
	.long	387                             ; displayWinOrLoss
	.long	1                               ; Num DIEs
	.long	1781
	.long	0
LNames11:
	.long	361                             ; getWordFromUser
	.long	1                               ; Num DIEs
	.long	1631
	.long	0
LNames7:
	.long	377                             ; startGame
	.long	1                               ; Num DIEs
	.long	1685
	.long	0
LNames13:
	.long	309                             ; createWordProgress
	.long	1                               ; Num DIEs
	.long	1205
	.long	0
LNames10:
	.long	296                             ; clearConsole
	.long	1                               ; Num DIEs
	.long	1184
	.long	0
LNames1:
	.long	211                             ; hangmanImages
	.long	1                               ; Num DIEs
	.long	400
	.long	0
LNames15:
	.long	342                             ; checkWord
	.long	1                               ; Num DIEs
	.long	1495
	.long	0
LNames5:
	.long	435                             ; openFile
	.long	1                               ; Num DIEs
	.long	2145
	.long	0
LNames3:
	.long	328                             ; letterInArray
	.long	1                               ; Num DIEs
	.long	1399
	.long	0
LNames17:
	.long	352                             ; gameMode
	.long	1                               ; Num DIEs
	.long	1577
	.long	0
LNames12:
	.long	278                             ; clear_stdin
	.long	1                               ; Num DIEs
	.long	1113
	.long	0
LNames2:
	.long	427                             ; guesses
	.long	1                               ; Num DIEs
	.long	1997
	.long	0
LNames6:
	.long	482                             ; main
	.long	1                               ; Num DIEs
	.long	2370
	.long	0
LNames14:
	.long	210                             ; 
	.long	38                              ; Num DIEs
	.long	50
	.long	93
	.long	122
	.long	151
	.long	180
	.long	209
	.long	238
	.long	267
	.long	296
	.long	313
	.long	342
	.long	371
	.long	449
	.long	478
	.long	507
	.long	536
	.long	565
	.long	594
	.long	611
	.long	640
	.long	669
	.long	686
	.long	715
	.long	732
	.long	761
	.long	790
	.long	807
	.long	836
	.long	865
	.long	882
	.long	911
	.long	940
	.long	969
	.long	986
	.long	1003
	.long	1020
	.long	1037
	.long	1066
	.long	0
LNames9:
	.long	404                             ; seperateGuessedLetters
	.long	1                               ; Num DIEs
	.long	1873
	.long	0
LNames0:
	.long	463                             ; selectWordFromFile
	.long	1                               ; Num DIEs
	.long	2221
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	9                               ; Header Bucket Count
	.long	18                              ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	0                               ; Bucket 0
	.long	4                               ; Bucket 1
	.long	6                               ; Bucket 2
	.long	9                               ; Bucket 3
	.long	10                              ; Bucket 4
	.long	11                              ; Bucket 5
	.long	-1                              ; Bucket 6
	.long	14                              ; Bucket 7
	.long	16                              ; Bucket 8
	.long	177647526                       ; Hash in Bucket 0
	.long	497714229                       ; Hash in Bucket 0
	.long	1950644907                      ; Hash in Bucket 0
	.long	-103762318                      ; Hash in Bucket 0
	.long	274395349                       ; Hash in Bucket 1
	.long	-34160304                       ; Hash in Bucket 1
	.long	193495088                       ; Hash in Bucket 2
	.long	249311216                       ; Hash in Bucket 2
	.long	-328142765                      ; Hash in Bucket 2
	.long	2055135702                      ; Hash in Bucket 3
	.long	-1921963995                     ; Hash in Bucket 4
	.long	-1304652851                     ; Hash in Bucket 5
	.long	-594775205                      ; Hash in Bucket 5
	.long	-104093792                      ; Hash in Bucket 5
	.long	-863830716                      ; Hash in Bucket 7
	.long	-143589579                      ; Hash in Bucket 7
	.long	2089071269                      ; Hash in Bucket 8
	.long	2090147939                      ; Hash in Bucket 8
.set Lset48, Ltypes4-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset48
.set Lset49, Ltypes0-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset49
.set Lset50, Ltypes6-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset50
.set Lset51, Ltypes17-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset51
.set Lset52, Ltypes3-Ltypes_begin       ; Offset in Bucket 1
	.long	Lset52
.set Lset53, Ltypes12-Ltypes_begin      ; Offset in Bucket 1
	.long	Lset53
.set Lset54, Ltypes2-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset54
.set Lset55, Ltypes9-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset55
.set Lset56, Ltypes8-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset56
.set Lset57, Ltypes15-Ltypes_begin      ; Offset in Bucket 3
	.long	Lset57
.set Lset58, Ltypes16-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset58
.set Lset59, Ltypes10-Ltypes_begin      ; Offset in Bucket 5
	.long	Lset59
.set Lset60, Ltypes13-Ltypes_begin      ; Offset in Bucket 5
	.long	Lset60
.set Lset61, Ltypes7-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset61
.set Lset62, Ltypes1-Ltypes_begin       ; Offset in Bucket 7
	.long	Lset62
.set Lset63, Ltypes14-Ltypes_begin      ; Offset in Bucket 7
	.long	Lset63
.set Lset64, Ltypes5-Ltypes_begin       ; Offset in Bucket 8
	.long	Lset64
.set Lset65, Ltypes11-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset65
Ltypes4:
	.long	247                             ; __darwin_clock_t
	.long	1                               ; Num DIEs
	.long	1094
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	225                             ; HangmanImages
	.long	1                               ; Num DIEs
	.long	421
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	633                             ; __int64_t
	.long	1                               ; Num DIEs
	.long	2878
	.short	22
	.byte	0
	.long	0
Ltypes17:
	.long	264                             ; unsigned long
	.long	1                               ; Num DIEs
	.long	1105
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	540                             ; short
	.long	1                               ; Num DIEs
	.long	2748
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	611                             ; fpos_t
	.long	1                               ; Num DIEs
	.long	2856
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	493                             ; int
	.long	1                               ; Num DIEs
	.long	2464
	.short	36
	.byte	0
	.long	0
Ltypes9:
	.long	487                             ; _Bool
	.long	1                               ; Num DIEs
	.long	2457
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	556                             ; __sbuf
	.long	1                               ; Num DIEs
	.long	2755
	.short	19
	.byte	0
	.long	0
Ltypes15:
	.long	502                             ; __sFILE
	.long	1                               ; Num DIEs
	.long	2487
	.short	19
	.byte	0
	.long	0
Ltypes16:
	.long	643                             ; long long
	.long	1                               ; Num DIEs
	.long	2889
	.short	36
	.byte	0
	.long	0
Ltypes10:
	.long	730                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	2971
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	190                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	513                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	2741
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	239                             ; clock_t
	.long	1                               ; Num DIEs
	.long	1083
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	618                             ; __darwin_off_t
	.long	1                               ; Num DIEs
	.long	2867
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	497                             ; FILE
	.long	1                               ; Num DIEs
	.long	2476
	.short	22
	.byte	0
	.long	0
Ltypes11:
	.long	185                             ; char
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
