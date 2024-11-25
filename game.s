	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r0, #16
	mov	r5, #75
	mov	r4, #95
	mov	lr, #10
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L4
	strb	r2, [r3, #56]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #32]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #48]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #36]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #584
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #1
	mov	r7, #2
	mov	r1, #16
	mov	r0, #0
	mov	r4, #10
	mov	lr, #3
	mov	r8, #896
	mov	r6, #188
	mov	r5, #124
	ldr	r2, .L8
	str	r3, [r2, #4]
	ldr	r3, .L8+4
	strb	ip, [r2, #56]
	strb	r7, [r3, #56]
	str	r8, [r2]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r2, #32]
	str	r4, [r3, #32]
	str	lr, [r2, #48]
	str	lr, [r3, #48]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [r2, #8]
	str	r0, [r2, #12]
	str	r0, [r2, #36]
	str	r0, [r3, #36]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	enemy1
	.word	enemy2
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	mov	r5, #16
	mov	r2, #1
	mov	ip, #75
	mov	r1, #10
	mov	r6, #3
	mov	r0, #95
	ldr	r3, .L12
	str	r4, [r3]
	ldr	r3, .L12+4
	str	r4, [r3]
	ldr	r3, .L12+8
	str	r4, [r3, #36]
	strb	r4, [r3, #56]
	str	ip, [r3]
	str	r1, [r3, #32]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r6, [r3, #48]
	str	r0, [r3, #4]
	bl	initEnemies
	mov	r3, #8
	mov	r2, #5
	mov	r0, #70
	mov	r8, #40
	mov	r7, #6
	mov	r9, #4
	mov	ip, #7
	mov	r10, #32
	mov	lr, #90
	ldr	r1, .L12+12
	str	r4, [r1]
	ldr	r1, .L12+16
	str	r6, [r1]
	ldr	r1, .L12+20
	str	r5, [r1, #16]
	str	r0, [r1]
	strb	r2, [r1, #56]
	str	r3, [r1, #20]
	str	r2, [r1, #4]
	ldr	r1, .L12+24
	ldr	r0, .L12+28
	str	r8, [r1]
	strb	r7, [r1, #56]
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	str	r2, [r1, #4]
	ldr	r1, .L12+32
	strb	r9, [r0, #56]
	strb	ip, [r1, #56]
	str	r10, [r0, #16]
	str	lr, [r1]
	str	r3, [r0, #20]
	str	r2, [r0]
	str	r2, [r0, #4]
	str	r2, [r1, #4]
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	hOff
	.word	vOff
	.word	player
	.word	score
	.word	lives
	.word	lifeDisplay
	.word	scoreNum
	.word	scoreDisplay
	.word	lifeNum
	.size	initGame, .-initGame
	.align	2
	.global	initScoreDisplay
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScoreDisplay, %function
initScoreDisplay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #5
	mov	ip, #32
	mov	r0, #8
	mov	r1, #4
	ldr	r3, .L15
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	strb	r1, [r3, #56]
	str	r2, [r3]
	str	r2, [r3, #4]
	bx	lr
.L16:
	.align	2
.L15:
	.word	scoreDisplay
	.size	initScoreDisplay, .-initScoreDisplay
	.align	2
	.global	initLifeDisplay
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLifeDisplay, %function
initLifeDisplay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #5
	mov	ip, #16
	mov	r0, #8
	mov	r1, #70
	ldr	r3, .L18
	stm	r3, {r1, r2}
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	strb	r2, [r3, #56]
	bx	lr
.L19:
	.align	2
.L18:
	.word	lifeDisplay
	.size	initLifeDisplay, .-initLifeDisplay
	.align	2
	.global	initScoreNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScoreNum, %function
initScoreNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	ip, #40
	mov	r0, #5
	mov	r1, #6
	ldr	r3, .L21
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #56]
	bx	lr
.L22:
	.align	2
.L21:
	.word	scoreNum
	.size	initScoreNum, .-initScoreNum
	.align	2
	.global	initLifeNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLifeNum, %function
initLifeNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	ip, #90
	mov	r0, #5
	mov	r1, #7
	ldr	r3, .L24
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #56]
	bx	lr
.L25:
	.align	2
.L24:
	.word	lifeNum
	.size	initLifeNum, .-initLifeNum
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r1, .L28
	ldr	r2, .L28+4
	ldr	r3, [r1]
	ldr	r0, [r2]
	ldr	r2, .L28+8
	ldr	ip, [r1, #36]
	ldr	lr, [r2]
	sub	r3, r3, r0
	ldr	r2, [r1, #4]
	ldrb	r0, [r1, #56]	@ zero_extendqisi2
	ldr	r1, [r1, #44]
	ldr	r4, .L28+12
	add	ip, r1, ip, lsl #5
	lsl	r3, r3, #23
	ldr	r1, .L28+16
	sub	r2, r2, lr
	lsr	r3, r3, #23
	add	lr, r4, r0, lsl #3
	orr	r3, r3, #16384
	lsl	r0, r0, #3
	and	r2, r2, #255
	and	r1, r1, ip, lsl #1
	strh	r3, [lr, #2]	@ movhi
	strh	r2, [r4, r0]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	player
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	1022
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r0, .L32
	ldr	r3, .L32+4
	ldr	ip, [r0]
	ldr	r3, [r3]
	ldr	r7, .L32+8
	ldr	r2, .L32+12
	ldr	r1, .L32+16
	ldr	lr, .L32+20
	ldrb	r6, [r0, #56]	@ zero_extendqisi2
	rsb	r3, r3, ip, asr #3
	ldr	r4, [r2]
	and	r3, r3, r7
	ldr	r2, [r0, #36]
	add	r5, lr, r6, lsl #3
	ldr	ip, [r1, #36]
	orr	r3, r3, #16384
	strh	r3, [r5, #2]	@ movhi
	add	r8, r2, #4
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #44]
	ldr	r0, [r1, #44]
	add	ip, ip, #8
	add	ip, r0, ip, lsl #5
	ldr	r0, .L32+24
	rsb	r4, r4, r3, asr #3
	add	r2, r2, r8, lsl #5
	ldr	r3, [r1]
	and	r2, r0, r2, lsl #1
	and	r0, r0, ip, lsl #1
	ldrb	ip, [r1, #56]	@ zero_extendqisi2
	and	r3, r3, r7
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	lsl	r6, r6, #3
	add	r1, lr, ip, lsl #3
	and	r4, r4, #255
	orr	r3, r3, #16384
	lsl	ip, ip, #3
	strh	r4, [lr, r6]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	strh	r7, [lr, ip]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	enemy1
	.word	hOff
	.word	511
	.word	vOff
	.word	enemy2
	.word	shadowOAM
	.word	1022
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	bl	drawPlayer
	bl	drawEnemies
	ldr	r3, .L36
	ldr	lr, .L36+4
	ldr	r1, [r3]
	ldrb	ip, [r3, #56]	@ zero_extendqisi2
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	ldr	r3, .L36+8
	and	r1, r1, lr
	ldr	r5, .L36+12
	add	r7, r3, ip, lsl #3
	orr	r1, r1, #16384
	strh	r1, [r7, #2]	@ movhi
	orr	r6, r6, #16384
	ldr	r1, .L36+16
	lsl	ip, ip, #3
	strh	r6, [r3, ip]	@ movhi
	ldrb	ip, [r5, #56]	@ zero_extendqisi2
	ldr	r6, [r5]
	strh	r1, [r7, #4]	@ movhi
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldr	r4, .L36+20
	lsl	r7, ip, #3
	and	r6, r6, lr
	add	ip, r3, ip, lsl #3
	strh	r6, [ip, #2]	@ movhi
	orr	r1, r1, #16384
	ldr	r6, .L36+24
	strh	r1, [r3, r7]	@ movhi
	ldr	r2, .L36+28
	ldrb	r1, [r4, #56]	@ zero_extendqisi2
	strh	r6, [ip, #4]	@ movhi
	ldrb	r6, [r4, #4]	@ zero_extendqisi2
	lsl	ip, r1, #3
	ldm	r2, {r0, r2}
	ldr	r4, [r4]
	ldr	r5, .L36+32
	strh	r6, [r3, ip]	@ movhi
	ldr	ip, .L36+36
	add	r1, r3, r1, lsl #3
	and	r4, r4, lr
	add	r0, r0, #128
	add	r2, r2, #128
	strh	r4, [r1, #2]	@ movhi
	and	r0, r0, ip
	ldr	r4, [r5]
	and	r2, r2, ip
	ldrb	ip, [r5, #56]	@ zero_extendqisi2
	orr	r0, r0, #8192
	ldrb	r5, [r5, #4]	@ zero_extendqisi2
	strh	r0, [r1, #4]	@ movhi
	and	lr, lr, r4
	add	r1, r3, ip, lsl #3
	orr	r2, r2, #8192
	lsl	ip, ip, #3
	strh	r5, [r3, ip]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	scoreDisplay
	.word	511
	.word	shadowOAM
	.word	lifeDisplay
	.word	8232
	.word	scoreNum
	.word	8264
	.word	.LANCHOR0
	.word	lifeNum
	.word	1023
	.size	drawGame, .-drawGame
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r1, .L40
	ldr	r3, [r1]
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L40+4
	ldrb	r1, [r1, #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	lr, .L40+8
	lsr	r3, r3, #23
	add	r0, ip, r2, lsl #3
	orr	r3, r3, #16384
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [ip, r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	scoreDisplay
	.word	shadowOAM
	.word	8232
	.size	drawScore, .-drawScore
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r1, .L44
	ldr	r3, [r1]
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L44+4
	ldrb	r1, [r1, #4]	@ zero_extendqisi2
	ldr	lr, .L44+8
	lsl	r3, r3, #23
	add	r0, ip, r2, lsl #3
	lsr	r3, r3, #23
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [ip, r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L45:
	.align	2
.L44:
	.word	lifeDisplay
	.word	shadowOAM
	.word	8264
	.size	drawLives, .-drawLives
	.align	2
	.global	drawScoreNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScoreNum, %function
drawScoreNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, .L48
	ldr	r0, .L48+4
	ldr	r3, [r3]
	ldr	r2, [r0]
	add	r3, r3, #128
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	ip, .L48+8
	lsl	r3, r3, #22
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	lsr	r3, r3, #22
	lsl	r2, r2, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #8192
	lsl	r1, r1, #3
	lsr	r2, r2, #23
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L49:
	.align	2
.L48:
	.word	.LANCHOR0
	.word	scoreNum
	.word	shadowOAM
	.size	drawScoreNum, .-drawScoreNum
	.align	2
	.global	drawLifeNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLifeNum, %function
drawLifeNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r3, .L52
	ldr	r0, .L52+4
	ldr	r3, [r3, #4]
	ldr	r2, [r0]
	add	r3, r3, #128
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	ip, .L52+8
	lsl	r3, r3, #22
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	lsr	r3, r3, #22
	lsl	r2, r2, #23
	add	r0, ip, r1, lsl #3
	orr	r3, r3, #8192
	lsl	r1, r1, #3
	lsr	r2, r2, #23
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L53:
	.align	2
.L52:
	.word	.LANCHOR0
	.word	lifeNum
	.word	shadowOAM
	.size	drawLifeNum, .-drawLifeNum
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L84
	ldr	r4, .L84+4
	ldrh	r1, [r2]
	add	r6, r4, #16
	tst	r1, #64
	str	r3, [r4, #40]
	ldm	r6, {r6, r7}
	ldr	r3, [r4]
	sub	sp, sp, #16
	bne	.L55
	mov	ip, #1
	mov	r0, #2
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #12]
	sub	r2, r2, lr
	str	r2, [r4, #4]
	str	ip, [r4, #40]
	str	r0, [r4, #36]
.L55:
	ands	r0, r1, #128
	bne	.L56
	mov	ip, #1
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #12]
	add	r2, r2, lr
	str	r0, [r4, #36]
	str	r2, [r4, #4]
	str	ip, [r4, #40]
.L56:
	tst	r1, #32
	bne	.L57
	mov	r2, #1
	ldr	r0, [r4, #8]
	sub	r3, r3, r0
	str	r3, [r4]
	str	r2, [r4, #40]
	str	r2, [r4, #36]
.L57:
	ldr	r3, .L84+8
	ldrh	r3, [r3]
	tst	r1, #16
	and	r3, r3, #1
	bne	.L58
	mov	r0, #1
	mov	r2, #3
	ldr	r5, [r4]
	cmp	r3, #0
	ldr	r3, [r4, #8]
	add	r5, r5, r3
	str	r5, [r4]
	str	r0, [r4, #40]
	str	r2, [r4, #36]
	beq	.L59
	ands	r8, r1, #1
	beq	.L82
.L63:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L83
	mov	r2, #10
	add	r6, r4, #16
	str	r3, [r4, #44]
	str	r2, [r4, #32]
	ldr	r5, [r4]
	ldm	r6, {r6, r7}
.L65:
	mov	r3, #0
	ldr	r0, .L84+12
	cmp	r5, r3
	strlt	r3, [r4]
	str	r3, [r0]
	rsb	r1, r6, #240
	ldr	r3, [r4, #4]
	add	r1, r1, r1, lsr #31
	sub	r1, r5, r1, asr #1
	movlt	r5, r6
	addge	r5, r5, r6
	cmp	r3, #0
	movlt	r0, #0
	movlt	r3, r7
	addge	r3, r3, r7
	strlt	r0, [r4, #4]
	cmp	r5, #512
	rsbgt	r6, r6, #512
	strgt	r6, [r4]
	cmp	r3, #256
	rsbgt	r7, r7, #256
	strgt	r7, [r4, #4]
	cmp	r1, #0
	movlt	r3, #0
	ldr	r2, .L84+16
	str	r1, [r2]
	strlt	r3, [r2]
	blt	.L54
	cmp	r1, #272
	movgt	r3, #272
	strgt	r3, [r2]
.L54:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L83:
	add	r6, r4, #16
	ldr	r5, [r4]
	ldm	r6, {r6, r7}
.L59:
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L65
	ldr	r0, [r4, #44]
	ldr	r3, .L84+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #44]
	str	r3, [r4, #32]
	b	.L65
.L58:
	cmp	r3, #0
	beq	.L63
	ands	r8, r1, #1
	bne	.L63
.L82:
	ldr	r5, .L84+24
	ldm	r5, {r0, r1}
	add	ip, r5, #16
	asr	r1, r1, #3
	asr	r0, r0, #3
	ldm	ip, {ip, lr}
	str	r1, [sp, #4]
	str	r0, [sp]
	ldr	r1, [r4, #4]
	ldr	r0, [r4]
	add	r2, r6, #10
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r6, .L84+28
	add	r3, r7, #10
	sub	r1, r1, #5
	sub	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L63
	ldr	r2, .L84+32
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r8, [r5]
	str	r8, [r5, #4]
	str	r3, [r2]
	b	.L63
.L85:
	.align	2
.L84:
	.word	buttons
	.word	player
	.word	oldButtons
	.word	vOff
	.word	hOff
	.word	__aeabi_idivmod
	.word	enemy1
	.word	collision
	.word	score
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L98
	ldr	r4, .L98+4
	ldr	r2, [r3]
	ldr	r1, [r4]
	cmp	r1, r2, lsl #3
	ldr	r2, [r4, #4]
	bge	.L87
	mov	lr, #3
	mov	ip, #1
	ldr	r0, [r4, #8]
	add	r1, r0, r1
	str	r1, [r4]
	str	lr, [r4, #36]
	str	ip, [r4, #40]
.L88:
	ldr	r1, [r3, #4]
	cmp	r2, r1, lsl #3
	bge	.L89
	mov	ip, #0
	mov	r0, #1
	ldr	r1, [r4, #12]
	add	r2, r1, r2
	str	r2, [r4, #4]
	str	ip, [r4, #36]
	str	r0, [r4, #40]
.L90:
	ldr	r2, [r4, #32]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r4, #32]
	bne	.L86
	add	r0, r3, #44
	ldm	r0, {r0, r1}
	ldr	r3, .L98+8
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #44]
	str	r3, [r4, #32]
.L86:
	pop	{r4, lr}
	bx	lr
.L89:
	ble	.L91
	mov	r0, #2
	mov	r1, #1
	ldr	ip, [r4, #12]
	sub	r2, r2, ip
	str	r2, [r4, #4]
	str	r0, [r4, #36]
	str	r1, [r4, #40]
	b	.L90
.L91:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	moveq	r3, #10
	streq	r2, [r4, #44]
	streq	r3, [r4, #32]
	bne	.L90
	pop	{r4, lr}
	bx	lr
.L87:
	ble	.L88
	mov	r0, #1
	ldr	ip, [r4, #8]
	sub	r1, r1, ip
	str	r1, [r4]
	str	r0, [r4, #36]
	str	r0, [r4, #40]
	b	.L88
.L99:
	.align	2
.L98:
	.word	player
	.word	enemy1
	.word	__aeabi_idivmod
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updateLifeNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLifeNum, %function
updateLifeNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L108
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L106
	cmp	r3, #2
	bne	.L107
	mov	r2, #9
	ldr	r3, .L108+4
	str	r2, [r3, #4]
	bx	lr
.L107:
	cmp	r3, #1
	moveq	r2, #8
	ldreq	r3, .L108+4
	streq	r2, [r3, #4]
	bx	lr
.L106:
	mov	r2, #10
	ldr	r3, .L108+4
	str	r2, [r3, #4]
	bx	lr
.L109:
	.align	2
.L108:
	.word	lives
	.word	.LANCHOR0
	.size	updateLifeNum, .-updateLifeNum
	.align	2
	.global	updateScoreNum
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScoreNum, %function
updateScoreNum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L130
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L111
	mov	r2, #7
	ldr	r3, .L130+4
	str	r2, [r3]
	bx	lr
.L111:
	cmp	r3, #1
	bne	.L126
	mov	r2, #8
	ldr	r3, .L130+4
	str	r2, [r3]
	bx	lr
.L126:
	cmp	r3, #2
	bne	.L127
	mov	r2, #9
	ldr	r3, .L130+4
	str	r2, [r3]
	bx	lr
.L127:
	cmp	r3, #3
	bne	.L128
	mov	r2, #10
	ldr	r3, .L130+4
	str	r2, [r3]
	bx	lr
.L128:
	cmp	r3, #4
	bne	.L129
	mov	r2, #11
	ldr	r3, .L130+4
	str	r2, [r3]
	bx	lr
.L129:
	cmp	r3, #5
	moveq	r2, #12
	ldreq	r3, .L130+4
	streq	r2, [r3]
	bx	lr
.L131:
	.align	2
.L130:
	.word	score
	.word	.LANCHOR0
	.size	updateScoreNum, .-updateScoreNum
	.align	2
	.global	checkPlayerEnemyCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkPlayerEnemyCollision, %function
checkPlayerEnemyCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L141
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	sub	sp, sp, #16
	ldr	r4, .L141+4
	asr	r2, r2, #3
	asr	r3, r3, #3
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r6, .L141+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L133
	ldr	r0, [r4]
.L134:
	ldr	r3, .L141+12
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	str	r2, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r3]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r2, .L141+16
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L133:
	ldr	r3, [r5]
	ldr	r0, [r4]
	cmp	r0, r3
	bge	.L135
	ldr	r1, .L141+16
	ldr	r2, [r1]
	add	r0, r0, #10
	sub	r2, r2, #1
	str	r0, [r4]
	str	r2, [r1]
.L135:
	cmp	r3, r0
	bge	.L134
	ldr	r2, .L141+16
	ldr	r3, [r2]
	sub	r0, r0, #10
	sub	r3, r3, #1
	str	r0, [r4]
	str	r3, [r2]
	b	.L134
.L142:
	.align	2
.L141:
	.word	enemy1
	.word	player
	.word	collision
	.word	enemy2
	.word	lives
	.size	checkPlayerEnemyCollision, .-checkPlayerEnemyCollision
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	updateEnemies
	bl	updateScoreNum
	ldr	r3, .L151
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L149
	cmp	r3, #2
	bne	.L150
	mov	r2, #9
	ldr	r3, .L151+4
	str	r2, [r3, #4]
.L145:
	pop	{r4, lr}
	b	checkPlayerEnemyCollision
.L150:
	cmp	r3, #1
	bne	.L145
	mov	r2, #8
	ldr	r3, .L151+4
	pop	{r4, lr}
	str	r2, [r3, #4]
	b	checkPlayerEnemyCollision
.L149:
	mov	r2, #10
	ldr	r3, .L151+4
	pop	{r4, lr}
	str	r2, [r3, #4]
	b	checkPlayerEnemyCollision
.L152:
	.align	2
.L151:
	.word	lives
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
	.global	lifeDisplayTileIndex
	.global	scoreDisplayTileIndex
	.comm	lives,4,4
	.comm	score,4,4
	.comm	lifeNum,60,4
	.comm	scoreNum,60,4
	.comm	lifeDisplay,60,4
	.comm	scoreDisplay,60,4
	.comm	enemy2,60,4
	.comm	enemy1,60,4
	.comm	player,60,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	scoreDisplayTileIndex, %object
	.size	scoreDisplayTileIndex, 4
scoreDisplayTileIndex:
	.word	8
	.type	lifeDisplayTileIndex, %object
	.size	lifeDisplayTileIndex, 4
lifeDisplayTileIndex:
	.word	8
	.ident	"GCC: (devkitARM release 53) 9.1.0"
