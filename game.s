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
	.global	initFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFood, %function
initFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #8
	push	{r4, r5, r6, lr}
	ldr	r4, .L12
	ldr	r5, .L12+4
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r5
	ldr	r3, .L12+8
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #2
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L12+12
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl r1
	sub	r3, r0, r3, lsl #2
	str	r3, [r4, #4]
	strb	r1, [r4, #56]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	food
	.word	rand
	.word	156180629
	.word	-368140053
	.size	initFood, .-initFood
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
	mov	r2, #1
	mov	ip, #75
	mov	r1, #10
	mov	r5, #16
	mov	r6, #3
	mov	r0, #95
	ldr	r3, .L16
	str	r4, [r3]
	ldr	r3, .L16+4
	str	r4, [r3]
	ldr	r3, .L16+8
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
	bl	initFood
	mov	r3, #8
	mov	r2, #5
	mov	r0, #70
	mov	r8, #40
	mov	r7, #6
	mov	r9, #4
	mov	ip, #7
	mov	r10, #32
	mov	lr, #90
	ldr	r1, .L16+12
	str	r4, [r1]
	ldr	r1, .L16+16
	str	r6, [r1]
	ldr	r1, .L16+20
	str	r5, [r1, #16]
	str	r0, [r1]
	strb	r2, [r1, #56]
	str	r3, [r1, #20]
	str	r2, [r1, #4]
	ldr	r1, .L16+24
	ldr	r0, .L16+28
	str	r8, [r1]
	strb	r7, [r1, #56]
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	str	r2, [r1, #4]
	ldr	r1, .L16+32
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
.L17:
	.align	2
.L16:
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
	ldr	r3, .L19
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	strb	r1, [r3, #56]
	str	r2, [r3]
	str	r2, [r3, #4]
	bx	lr
.L20:
	.align	2
.L19:
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
	ldr	r3, .L22
	stm	r3, {r1, r2}
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	strb	r2, [r3, #56]
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r3, .L25
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #56]
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L28
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	strb	r1, [r3, #56]
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r1, .L32
	ldr	r2, .L32+4
	ldr	r3, [r1]
	ldr	r0, [r2]
	ldr	r2, .L32+8
	ldr	ip, [r1, #36]
	ldr	lr, [r2]
	sub	r3, r3, r0
	ldr	r2, [r1, #4]
	ldrb	r0, [r1, #56]	@ zero_extendqisi2
	ldr	r1, [r1, #44]
	ldr	r4, .L32+12
	add	ip, r1, ip, lsl #5
	lsl	r3, r3, #23
	ldr	r1, .L32+16
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
.L33:
	.align	2
.L32:
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
	ldr	r0, .L36
	ldr	r3, .L36+4
	ldr	ip, [r0]
	ldr	r3, [r3]
	ldr	r7, .L36+8
	ldr	r2, .L36+12
	ldr	r1, .L36+16
	ldr	lr, .L36+20
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
	ldr	r0, .L36+24
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
.L37:
	.align	2
.L36:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #8
	bl	drawPlayer
	bl	drawEnemies
	ldr	r3, .L40
	ldr	r0, .L40+4
	ldr	r1, [r3, #4]
	ldr	lr, [r0]
	ldr	r2, .L40+8
	ldrb	r0, [r3, #56]	@ zero_extendqisi2
	ldr	r5, [r3]
	sub	r1, r1, lr
	ldr	r3, .L40+12
	ldr	r2, [r2]
	lsl	r4, r0, #3
	and	r1, r1, #255
	strh	r1, [r3, r4]	@ movhi
	ldr	r1, .L40+16
	ldr	r7, .L40+20
	sub	r5, r5, r2
	add	r0, r3, r0, lsl #3
	and	r5, r5, r1
	strh	r5, [r0, #2]	@ movhi
	strh	r8, [r0, #4]	@ movhi
	ldr	r0, [r7]
	ldrb	r9, [r7, #56]	@ zero_extendqisi2
	and	r0, r0, r1
	ldrb	r5, [r7, #4]	@ zero_extendqisi2
	add	r8, r3, r9, lsl #3
	orr	r0, r0, #16384
	strh	r0, [r8, #2]	@ movhi
	ldr	r6, .L40+24
	ldr	r0, .L40+28
	lsl	r7, r9, #3
	orr	r5, r5, #16384
	strh	r5, [r3, r7]	@ movhi
	strh	r0, [r8, #4]	@ movhi
	ldrb	r7, [r6, #56]	@ zero_extendqisi2
	ldr	r0, [r6]
	ldrb	r5, [r6, #4]	@ zero_extendqisi2
	ldr	lr, .L40+32
	lsl	r6, r7, #3
	and	r0, r0, r1
	add	r7, r3, r7, lsl #3
	strh	r0, [r7, #2]	@ movhi
	orr	r5, r5, #16384
	ldr	r0, .L40+36
	strh	r5, [r3, r6]	@ movhi
	ldr	ip, .L40+40
	ldrb	r6, [lr, #56]	@ zero_extendqisi2
	strh	r0, [r7, #4]	@ movhi
	ldr	r4, .L40+44
	ldrb	r7, [lr, #4]	@ zero_extendqisi2
	lsl	r0, r6, #3
	ldr	r2, [ip]
	strh	r7, [r3, r0]	@ movhi
	ldr	r5, .L40+48
	ldr	r0, [r4]
	ldr	lr, [lr]
	add	r2, r2, #128
	and	lr, lr, r1
	and	r2, r2, r5
	and	r1, r1, r0
	ldrb	r0, [r4, #56]	@ zero_extendqisi2
	add	r6, r3, r6, lsl #3
	ldrb	r4, [r4, #4]	@ zero_extendqisi2
	orr	r2, r2, #8192
	strh	r2, [r6, #4]	@ movhi
	add	r2, r3, r0, lsl #3
	lsl	r0, r0, #3
	strh	lr, [r6, #2]	@ movhi
	strh	r4, [r3, r0]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	ldr	r3, [ip, #4]
	add	r3, r3, #128
	and	r3, r3, r5
	orr	r3, r3, #8192
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	food
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	511
	.word	scoreDisplay
	.word	lifeDisplay
	.word	8232
	.word	scoreNum
	.word	8264
	.word	.LANCHOR0
	.word	lifeNum
	.word	1023
	.size	drawGame, .-drawGame
	.align	2
	.global	drawFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFood, %function
drawFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #8
	ldr	r1, .L44
	ldr	r2, .L44+4
	ldr	r0, .L44+8
	ldr	ip, [r2]
	ldr	r3, [r1]
	ldr	r0, [r0]
	ldr	r2, [r1, #4]
	sub	r3, r3, ip
	ldrb	r1, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L44+12
	sub	r2, r2, r0
	lsl	r3, r3, #23
	add	r0, ip, r1, lsl #3
	lsr	r3, r3, #23
	lsl	r1, r1, #3
	and	r2, r2, #255
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L45:
	.align	2
.L44:
	.word	food
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawFood, .-drawFood
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
	ldr	r1, .L48
	ldr	r3, [r1]
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L48+4
	ldrb	r1, [r1, #4]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	lr, .L48+8
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
.L49:
	.align	2
.L48:
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
	ldr	r1, .L52
	ldr	r3, [r1]
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	ldr	ip, .L52+4
	ldrb	r1, [r1, #4]	@ zero_extendqisi2
	ldr	lr, .L52+8
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
.L53:
	.align	2
.L52:
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
	ldr	r3, .L56
	ldr	r0, .L56+4
	ldr	r3, [r3]
	ldr	r2, [r0]
	add	r3, r3, #128
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	ip, .L56+8
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
.L57:
	.align	2
.L56:
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
	ldr	r3, .L60
	ldr	r0, .L60+4
	ldr	r3, [r3, #4]
	ldr	r2, [r0]
	add	r3, r3, #128
	ldrb	r1, [r0, #56]	@ zero_extendqisi2
	ldr	ip, .L60+8
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
.L61:
	.align	2
.L60:
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
	ldr	r2, .L92
	ldr	r4, .L92+4
	ldrh	r1, [r2]
	add	r6, r4, #16
	tst	r1, #64
	str	r3, [r4, #40]
	ldm	r6, {r6, r7}
	ldr	r3, [r4]
	sub	sp, sp, #16
	bne	.L63
	mov	ip, #1
	mov	r0, #2
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #12]
	sub	r2, r2, lr
	str	r2, [r4, #4]
	str	ip, [r4, #40]
	str	r0, [r4, #36]
.L63:
	ands	r0, r1, #128
	bne	.L64
	mov	ip, #1
	ldr	r2, [r4, #4]
	ldr	lr, [r4, #12]
	add	r2, r2, lr
	str	r0, [r4, #36]
	str	r2, [r4, #4]
	str	ip, [r4, #40]
.L64:
	tst	r1, #32
	bne	.L65
	mov	r2, #1
	ldr	r0, [r4, #8]
	sub	r3, r3, r0
	str	r3, [r4]
	str	r2, [r4, #40]
	str	r2, [r4, #36]
.L65:
	ldr	r3, .L92+8
	ldrh	r3, [r3]
	tst	r1, #16
	and	r3, r3, #1
	bne	.L66
	mov	r0, #1
	mov	r2, #3
	ldr	r5, [r4]
	cmp	r3, #0
	ldr	r3, [r4, #8]
	add	r5, r5, r3
	str	r5, [r4]
	str	r0, [r4, #40]
	str	r2, [r4, #36]
	beq	.L67
	ands	r8, r1, #1
	beq	.L90
.L71:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L91
	mov	r2, #10
	add	r6, r4, #16
	str	r3, [r4, #44]
	str	r2, [r4, #32]
	ldr	r5, [r4]
	ldm	r6, {r6, r7}
.L73:
	mov	r3, #0
	ldr	r0, .L92+12
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
	ldr	r2, .L92+16
	str	r1, [r2]
	strlt	r3, [r2]
	blt	.L62
	cmp	r1, #272
	movgt	r3, #272
	strgt	r3, [r2]
.L62:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L91:
	add	r6, r4, #16
	ldr	r5, [r4]
	ldm	r6, {r6, r7}
.L67:
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L73
	ldr	r0, [r4, #44]
	ldr	r3, .L92+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #44]
	str	r3, [r4, #32]
	b	.L73
.L66:
	cmp	r3, #0
	beq	.L71
	ands	r8, r1, #1
	bne	.L71
.L90:
	ldr	r5, .L92+24
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
	ldr	r6, .L92+28
	add	r3, r7, #10
	sub	r1, r1, #5
	sub	r0, r0, #5
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L71
	ldr	r2, .L92+32
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r8, [r5]
	str	r8, [r5, #4]
	str	r3, [r2]
	b	.L71
.L93:
	.align	2
.L92:
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
	ldr	r3, .L106
	ldr	r4, .L106+4
	ldr	r2, [r3]
	ldr	r1, [r4]
	cmp	r1, r2, lsl #3
	ldr	r2, [r4, #4]
	bge	.L95
	mov	lr, #3
	mov	ip, #1
	ldr	r0, [r4, #8]
	add	r1, r0, r1
	str	r1, [r4]
	str	lr, [r4, #36]
	str	ip, [r4, #40]
.L96:
	ldr	r1, [r3, #4]
	cmp	r2, r1, lsl #3
	bge	.L97
	mov	ip, #0
	mov	r0, #1
	ldr	r1, [r4, #12]
	add	r2, r1, r2
	str	r2, [r4, #4]
	str	ip, [r4, #36]
	str	r0, [r4, #40]
.L98:
	ldr	r2, [r4, #32]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r4, #32]
	bne	.L94
	add	r0, r3, #44
	ldm	r0, {r0, r1}
	ldr	r3, .L106+8
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r1, [r4, #44]
	str	r3, [r4, #32]
.L94:
	pop	{r4, lr}
	bx	lr
.L97:
	ble	.L99
	mov	r0, #2
	mov	r1, #1
	ldr	ip, [r4, #12]
	sub	r2, r2, ip
	str	r2, [r4, #4]
	str	r0, [r4, #36]
	str	r1, [r4, #40]
	b	.L98
.L99:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	moveq	r3, #10
	streq	r2, [r4, #44]
	streq	r3, [r4, #32]
	bne	.L98
	pop	{r4, lr}
	bx	lr
.L95:
	ble	.L96
	mov	r0, #1
	ldr	ip, [r4, #8]
	sub	r1, r1, ip
	str	r1, [r4]
	str	r0, [r4, #36]
	str	r0, [r4, #40]
	b	.L96
.L107:
	.align	2
.L106:
	.word	player
	.word	enemy1
	.word	__aeabi_idivmod
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updateFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFood, %function
updateFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L115
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	sub	sp, sp, #20
	ldr	r0, .L115+4
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L115+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L108
	ldr	r2, .L115+12
	ldr	r3, [r2]
	cmp	r3, #2
	addle	r3, r3, #1
	strle	r3, [r2]
	mov	r2, #240
	mov	r3, #180
	stm	r4, {r2, r3}
.L108:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	food
	.word	player
	.word	collision
	.word	lives
	.size	updateFood, .-updateFood
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
	ldr	r3, .L125
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L123
	cmp	r3, #2
	bne	.L124
	mov	r2, #9
	ldr	r3, .L125+4
	str	r2, [r3, #4]
	bx	lr
.L124:
	cmp	r3, #1
	moveq	r2, #8
	ldreq	r3, .L125+4
	streq	r2, [r3, #4]
	bx	lr
.L123:
	mov	r2, #10
	ldr	r3, .L125+4
	str	r2, [r3, #4]
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r3, .L147
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L128
	mov	r2, #7
	ldr	r3, .L147+4
	str	r2, [r3]
	bx	lr
.L128:
	cmp	r3, #1
	bne	.L143
	mov	r2, #8
	ldr	r3, .L147+4
	str	r2, [r3]
	bx	lr
.L143:
	cmp	r3, #2
	bne	.L144
	mov	r2, #9
	ldr	r3, .L147+4
	str	r2, [r3]
	bx	lr
.L144:
	cmp	r3, #3
	bne	.L145
	mov	r2, #10
	ldr	r3, .L147+4
	str	r2, [r3]
	bx	lr
.L145:
	cmp	r3, #4
	bne	.L146
	mov	r2, #11
	ldr	r3, .L147+4
	str	r2, [r3]
	bx	lr
.L146:
	cmp	r3, #5
	moveq	r2, #12
	ldreq	r3, .L147+4
	streq	r2, [r3]
	bx	lr
.L148:
	.align	2
.L147:
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
	ldr	r5, .L158
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	sub	sp, sp, #16
	ldr	r4, .L158+4
	asr	r2, r2, #3
	asr	r3, r3, #3
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r6, .L158+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L150
	ldr	r0, [r4]
.L151:
	ldr	r3, .L158+12
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
	ldrne	r2, .L158+16
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L150:
	ldr	r3, [r5]
	ldr	r0, [r4]
	cmp	r0, r3
	bge	.L152
	ldr	r1, .L158+16
	ldr	r2, [r1]
	add	r0, r0, #10
	sub	r2, r2, #1
	str	r0, [r4]
	str	r2, [r1]
.L152:
	cmp	r3, r0
	bge	.L151
	ldr	r2, .L158+16
	ldr	r3, [r2]
	sub	r0, r0, #10
	sub	r3, r3, #1
	str	r0, [r4]
	str	r3, [r2]
	b	.L151
.L159:
	.align	2
.L158:
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
	bl	updateFood
	bl	updateScoreNum
	ldr	r3, .L168
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L166
	cmp	r3, #2
	bne	.L167
	mov	r2, #9
	ldr	r3, .L168+4
	str	r2, [r3, #4]
.L162:
	pop	{r4, lr}
	b	checkPlayerEnemyCollision
.L167:
	cmp	r3, #1
	bne	.L162
	mov	r2, #8
	ldr	r3, .L168+4
	pop	{r4, lr}
	str	r2, [r3, #4]
	b	checkPlayerEnemyCollision
.L166:
	mov	r2, #10
	ldr	r3, .L168+4
	pop	{r4, lr}
	str	r2, [r3, #4]
	b	checkPlayerEnemyCollision
.L169:
	.align	2
.L168:
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
	.comm	food,60,4
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
