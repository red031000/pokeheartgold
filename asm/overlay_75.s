
	thumb_func_start ov75_02246960
ov75_02246960: @ 0x02246960
	push {r3, r4, r5, lr}
	movs r2, #0xa
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x73
	lsls r2, r2, #0xe
	bl FUN_0201A910
	movs r2, #0x57
	movs r0, #0
	movs r1, #0x59
	lsls r2, r2, #4
	bl FUN_0201A910
	movs r1, #0x47
	adds r0, r5, #0
	lsls r1, r1, #2
	movs r2, #0x73
	bl FUN_02007280
	movs r2, #0x47
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D4994
	adds r0, r5, #0
	bl FUN_020072A4
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl FUN_02028EA8
	str r0, [r4, #8]
	movs r0, #0x64
	movs r1, #0x73
	bl FUN_02026354
	movs r1, #0x11
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #0x64
	movs r1, #0x73
	bl FUN_02026354
	movs r1, #0x45
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _022469D4 @ =0x0000047D
	movs r0, #0x11
	movs r2, #1
	bl FUN_02004EC4
	movs r0, #0
	adds r4, #0x88
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022469D4: .4byte 0x0000047D
	thumb_func_end ov75_02246960

	thumb_func_start ov75_022469D8
ov75_022469D8: @ 0x022469D8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_02007290
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _022469FC
	blx FUN_021ECB40
	bl FUN_022378DC
	blx FUN_021EC9D4
	movs r1, #3
	subs r0, r1, r0
	bl FUN_0203A930
_022469FC:
	ldr r0, [r5]
	cmp r0, #4
	bhi _02246ADE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02246A0E: @ jump table
	.2byte _02246A18 - _02246A0E - 2 @ case 0
	.2byte _02246A24 - _02246A0E - 2 @ case 1
	.2byte _02246A44 - _02246A0E - 2 @ case 2
	.2byte _02246A82 - _02246A0E - 2 @ case 3
	.2byte _02246ADA - _02246A0E - 2 @ case 4
_02246A18:
	adds r0, r4, #0
	bl ov75_02246B48
	movs r0, #1
	str r0, [r5]
	b _02246ADE
_02246A24:
	bl FUN_02034DB8
	cmp r0, #0
	beq _02246ADE
	ldr r1, [r4, #0x10]
	ldr r0, _02246AE4 @ =0x02249BE0
	str r1, [r0]
	ldr r0, _02246AE8 @ =ov75_02246BF0
	ldr r1, _02246AEC @ =ov75_02246C18
	blx FUN_021EC294
	movs r0, #1
	str r0, [r4, #0x7c]
	movs r0, #2
	str r0, [r5]
	b _02246ADE
_02246A44:
	adds r1, r4, #0
	adds r1, #0x88
	ldr r1, [r1]
	adds r0, r4, #0
	lsls r2, r1, #4
	ldr r1, _02246AF0 @ =0x02249904
	ldr r1, [r1, r2]
	blx r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	lsls r2, r0, #4
	ldr r0, _02246AF4 @ =0x0224990C
	ldr r0, [r0, r2]
	movs r2, #0x73
	bl FUN_0200724C
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	movs r0, #6
	adds r4, #0x88
	str r0, [r4]
	movs r0, #3
	str r0, [r5]
	b _02246ADE
_02246A82:
	ldr r0, [r4]
	bl FUN_020072A8
	cmp r0, #1
	bne _02246ADE
	adds r1, r4, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r0, r4, #0
	lsls r2, r1, #4
	ldr r1, _02246AF8 @ =0x02249908
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [r4]
	bl FUN_02007278
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #6
	bne _02246AB2
	movs r0, #4
	str r0, [r5]
	b _02246ADE
_02246AB2:
	lsls r1, r0, #4
	ldr r0, _02246AFC @ =0x02249910
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02246AC8
	adds r0, r4, #0
	bl ov75_02246B98
	movs r0, #2
	str r0, [r5]
	b _02246ADE
_02246AC8:
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246AD4
	movs r0, #2
	str r0, [r5]
	b _02246ADE
_02246AD4:
	movs r0, #0
	str r0, [r5]
	b _02246ADE
_02246ADA:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02246ADE:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02246AE4: .4byte 0x02249BE0
_02246AE8: .4byte ov75_02246BF0
_02246AEC: .4byte ov75_02246C18
_02246AF0: .4byte 0x02249904
_02246AF4: .4byte 0x0224990C
_02246AF8: .4byte 0x02249908
_02246AFC: .4byte 0x02249910
	thumb_func_end ov75_022469D8

	thumb_func_start ov75_02246B00
ov75_02246B00: @ 0x02246B00
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02007290
	adds r4, r0, #0
	bl ov75_02246B98
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02026380
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02026380
	adds r0, r5, #0
	bl FUN_02007294
	movs r0, #0x73
	bl FUN_0201A9C4
	movs r0, #0x59
	bl FUN_0201A9C4
	ldr r0, _02246B40 @ =0x0000003C
	ldr r1, _02246B44 @ =0x021EAFE0
	bl FUN_02000EF4
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02246B40: .4byte 0x0000003C
_02246B44: .4byte 0x021EAFE0
	thumb_func_end ov75_02246B00

	thumb_func_start ov75_02246B48
ov75_02246B48: @ 0x02246B48
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _02246B8E
	ldr r0, _02246B90 @ =0x00000046
	movs r1, #2
	bl FUN_02006FF8
	bl FUN_020915B0
	bl FUN_02091614
	movs r0, #0x73
	bl FUN_02039FD8
	ldr r1, _02246B94 @ =0x00020020
	movs r0, #0x73
	bl FUN_0201AA8C
	str r0, [r4, #0xc]
	adds r0, #0x1f
	movs r1, #0x1f
	bics r0, r1
	movs r1, #2
	lsls r1, r1, #0x10
	movs r2, #0
	blx FUN_020B535C
	str r0, [r4, #0x10]
	bl FUN_02034D8C
	movs r0, #4
	bl FUN_0201A4CC
_02246B8E:
	pop {r4, pc}
	.align 2, 0
_02246B90: .4byte 0x00000046
_02246B94: .4byte 0x00020020
	thumb_func_end ov75_02246B48

	thumb_func_start ov75_02246B98
ov75_02246B98: @ 0x02246B98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246BC4
	ldr r0, [r4, #0x10]
	blx FUN_020B5394
	ldr r0, [r4, #0xc]
	bl FUN_0201AB0C
	bl FUN_02091624
	bl FUN_020915C0
	bl FUN_02034DE0
	ldr r0, _02246BC8 @ =0x00000046
	bl FUN_02006F7C
	movs r0, #0
	str r0, [r4, #0x7c]
_02246BC4:
	pop {r4, pc}
	nop
_02246BC8: .4byte 0x00000046
	thumb_func_end ov75_02246B98

	thumb_func_start ov75_02246BCC
ov75_02246BCC: @ 0x02246BCC
	adds r3, r0, #0
	adds r3, #0x88
	str r1, [r3]
	adds r0, #0x8c
	str r2, [r0]
	bx lr
	thumb_func_end ov75_02246BCC

	thumb_func_start ov75_02246BD8
ov75_02246BD8: @ 0x02246BD8
	movs r1, #6
	adds r0, #0x88
	str r1, [r0]
	bx lr
	thumb_func_end ov75_02246BD8

	thumb_func_start ov75_02246BE0
ov75_02246BE0: @ 0x02246BE0
	adds r0, #0x7a
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov75_02246BE0

	thumb_func_start ov75_02246BE8
ov75_02246BE8: @ 0x02246BE8
	adds r0, #0x7a
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov75_02246BE8

	thumb_func_start ov75_02246BF0
ov75_02246BF0: @ 0x02246BF0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	blx FUN_020D3A38
	adds r6, r0, #0
	ldr r0, _02246C14 @ =0x02249BE0
	adds r1, r5, #0
	ldr r0, [r0]
	adds r2, r4, #0
	blx FUN_020B53A0
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020D3A4C
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02246C14: .4byte 0x02249BE0
	thumb_func_end ov75_02246BF0

	thumb_func_start ov75_02246C18
ov75_02246C18: @ 0x02246C18
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	beq _02246C34
	blx FUN_020D3A38
	adds r4, r0, #0
	ldr r0, _02246C38 @ =0x02249BE0
	adds r1, r5, #0
	ldr r0, [r0]
	blx FUN_020B5530
	adds r0, r4, #0
	blx FUN_020D3A4C
_02246C34:
	pop {r3, r4, r5, pc}
	nop
_02246C38: .4byte 0x02249BE0
	thumb_func_end ov75_02246C18

	thumb_func_start ov75_02246C3C
ov75_02246C3C: @ 0x02246C3C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x73
	movs r1, #0x64
	bl FUN_0201AA8C
	adds r4, r0, #0
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r2, #0x73
	bl ov75_02249780
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_0203175C
	adds r0, r4, #0
	bl FUN_0201AB0C
	pop {r3, r4, r5, pc}
	thumb_func_end ov75_02246C3C

	thumb_func_start ov75_02246C68
ov75_02246C68: @ 0x02246C68
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r2, [r2]
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02031780
	movs r2, #0x42
	lsls r2, r2, #2
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	movs r1, #2
	bl FUN_02031780
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02246C68

	thumb_func_start ov75_02246C8C
ov75_02246C8C: @ 0x02246C8C
	movs r2, #0x41
	adds r3, r0, #0
	lsls r2, r2, #2
	ldr r0, [r3, #4]
	ldr r2, [r3, r2]
	ldr r3, _02246C9C @ =FUN_02031780
	movs r1, #3
	bx r3
	.align 2, 0
_02246C9C: .4byte FUN_02031780
	thumb_func_end ov75_02246C8C

	thumb_func_start ov75_02246CA0
ov75_02246CA0: @ 0x02246CA0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x98
	bl FUN_0203186C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov75_02246CD8
	pop {r4, pc}
	thumb_func_end ov75_02246CA0

	thumb_func_start ov75_02246CB8
ov75_02246CB8: @ 0x02246CB8
	adds r1, r0, #0
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _02246CC8 @ =ov75_02249780
	adds r1, #0xbc
	movs r2, #0x73
	bx r3
	.align 2, 0
_02246CC8: .4byte ov75_02249780
	thumb_func_end ov75_02246CB8

	thumb_func_start ov75_02246CCC
ov75_02246CCC: @ 0x02246CCC
	movs r1, #0x42
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	adds r0, #0xfa
	strh r1, [r0]
	bx lr
	thumb_func_end ov75_02246CCC

	thumb_func_start ov75_02246CD8
ov75_02246CD8: @ 0x02246CD8
	adds r0, #0x78
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov75_02246CD8

	thumb_func_start ov75_02246CE0
ov75_02246CE0: @ 0x02246CE0
	movs r1, #0x42
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov75_02246CE0

	thumb_func_start ov75_02246CE8
ov75_02246CE8: @ 0x02246CE8
	movs r1, #0x41
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov75_02246CE8

	thumb_func_start ov75_02246CF0
ov75_02246CF0: @ 0x02246CF0
	movs r2, #0x43
	lsls r2, r2, #2
	strb r1, [r0, r2]
	bx lr
	thumb_func_end ov75_02246CF0

	thumb_func_start ov75_02246CF8
ov75_02246CF8: @ 0x02246CF8
	movs r1, #0x43
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov75_02246CF8

	thumb_func_start ov75_02246D00
ov75_02246D00: @ 0x02246D00
	bx lr
	.align 2, 0
	thumb_func_end ov75_02246D00

	thumb_func_start ov75_02246D04
ov75_02246D04: @ 0x02246D04
	bx lr
	.align 2, 0
	thumb_func_end ov75_02246D04

	thumb_func_start ov75_02246D08
ov75_02246D08: @ 0x02246D08
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl FUN_02028EA8
	adds r3, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x73
	movs r1, #0x10
	add r2, sp, #8
	bl FUN_02085400
	adds r1, r4, #0
	adds r1, #0x94
	adds r4, #0x94
	str r0, [r1]
	ldr r0, [r4]
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov75_02246D08

	thumb_func_start ov75_02246D40
ov75_02246D40: @ 0x02246D40
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x94
	ldr r4, [r0]
	movs r1, #0x73
	ldr r0, [r4, #0x1c]
	bl ov75_02249838
	cmp r0, #0
	beq _02246D5E
	adds r0, r5, #0
	movs r1, #1
	bl ov75_02246CF0
	b _02246DA0
_02246D5E:
	adds r0, r5, #0
	bl ov75_02246CF8
	cmp r0, #2
	bne _02246D8C
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl FUN_020267A4
	cmp r0, #0
	beq _02246D82
	adds r0, r5, #0
	movs r1, #3
	bl ov75_02246CF0
	b _02246DA0
_02246D82:
	adds r0, r5, #0
	movs r1, #0
	bl ov75_02246CF0
	b _02246DA0
_02246D8C:
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl FUN_020263D4
	adds r0, r5, #0
	movs r1, #2
	bl ov75_02246CF0
_02246DA0:
	adds r0, r4, #0
	bl FUN_02085438
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov75_02246BCC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov75_02246D40

	thumb_func_start ov75_02246DB4
ov75_02246DB4: @ 0x02246DB4
	push {r4, lr}
	sub sp, #0x20
	adds r4, r0, #0
	movs r0, #3
	str r0, [sp, #0x10]
	movs r0, #4
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl FUN_02028EA8
	adds r3, r0, #0
	movs r0, #5
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	movs r1, #7
	add r2, sp, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x73
	bl FUN_0208541C
	adds r1, r4, #0
	adds r1, #0x94
	adds r4, #0x94
	str r0, [r1]
	ldr r0, [r4]
	add sp, #0x20
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02246DB4

	thumb_func_start ov75_02246DFC
ov75_02246DFC: @ 0x02246DFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x94
	ldr r4, [r0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl FUN_020266FC
	ldr r2, _02246E38 @ =0x00002710
	movs r3, #0
	blx FUN_020F290C
	movs r1, #0x42
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _02246E24
	bl GF_AssertFail
_02246E24:
	adds r0, r4, #0
	bl FUN_02085438
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov75_02246BCC
	pop {r3, r4, r5, pc}
	nop
_02246E38: .4byte 0x00002710
	thumb_func_end ov75_02246DFC

	thumb_func_start ov75_02246E3C
ov75_02246E3C: @ 0x02246E3C
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl FUN_02028EA8
	adds r3, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x73
	movs r1, #4
	add r2, sp, #8
	bl FUN_02085400
	adds r1, r4, #0
	adds r1, #0x94
	adds r4, #0x94
	str r0, [r1]
	ldr r0, [r4]
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02246E3C

	thumb_func_start ov75_02246E78
ov75_02246E78: @ 0x02246E78
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x94
	ldr r4, [r0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl FUN_020266FC
	movs r1, #0x41
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _02246E98
	bl GF_AssertFail
_02246E98:
	adds r0, r4, #0
	bl FUN_02085438
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov75_02246BCC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov75_02246E78

	thumb_func_start ov75_02246EAC
ov75_02246EAC: @ 0x02246EAC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x73
	movs r1, #0xc
	bl FUN_0201AA8C
	movs r1, #0
	movs r2, #0xc
	adds r4, r0, #0
	blx FUN_020D4994
	ldr r0, [r5, #4]
	str r0, [r4]
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x94
	adds r5, #0x94
	str r4, [r0]
	ldr r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov75_02246EAC

	thumb_func_start ov75_02246EDC
ov75_02246EDC: @ 0x02246EDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0203A05C
	cmp r0, #0
	beq _02246EF4
	ldr r0, [r4, #4]
	bl FUN_020503D0
	bl FUN_02066950
_02246EF4:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_0201AB0C
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov75_02246BCC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02246EDC

	thumb_func_start ov75_02246F0C
ov75_02246F0C: @ 0x02246F0C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201A0FC
	bl FUN_0201A108
	bl FUN_02022C54
	bl FUN_02022CBC
	movs r1, #1
	lsls r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _022470F4 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _022470F8 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _022470FC @ =0xFFFF1FFF
	ands r3, r2
	str r3, [r1]
	ldr r3, [r0]
	adds r1, #0x50
	ands r2, r3
	str r2, [r0]
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r2, #7
	movs r0, #3
	movs r1, #0x74
	lsls r2, r2, #0x10
	bl FUN_0201A910
	ldr r1, _02247100 @ =0x0000041C
	adds r0, r4, #0
	movs r2, #0x74
	bl FUN_02007280
	ldr r2, _02247100 @ =0x0000041C
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020D4994
	adds r0, r4, #0
	bl FUN_020072A4
	str r0, [r5]
	movs r0, #0x74
	bl FUN_0201AC88
	str r0, [r5, #4]
	movs r0, #0x40
	movs r1, #0x74
	bl FUN_0202055C
	movs r0, #4
	movs r1, #8
	bl FUN_0201A71C
	ldr r0, [r5, #4]
	bl ov75_0224725C
	bl FUN_020210BC
	movs r0, #4
	bl FUN_02021148
	movs r0, #0xb
	movs r1, #0x40
	movs r2, #0x74
	bl FUN_0200BD18
	str r0, [r5, #0x20]
	ldr r2, _02247104 @ =0x00000307
	movs r0, #0
	movs r1, #0x1b
	movs r3, #0x74
	bl FUN_0200BAF8
	str r0, [r5, #0x24]
	ldr r2, _02247108 @ =0x0000030A
	movs r0, #0
	movs r1, #0x1b
	movs r3, #0x74
	bl FUN_0200BAF8
	movs r2, #0x32
	str r0, [r5, #0x2c]
	movs r0, #0
	movs r1, #0x1b
	lsls r2, r2, #4
	movs r3, #0x74
	bl FUN_0200BAF8
	str r0, [r5, #0x30]
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0xed
	movs r3, #0x74
	bl FUN_0200BAF8
	str r0, [r5, #0x28]
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0xbc
	movs r3, #0x74
	bl FUN_0200BAF8
	str r0, [r5, #0x34]
	ldr r0, _0224710C @ =0x0000010E
	movs r1, #0x74
	bl FUN_02026354
	str r0, [r5, #0x38]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x74
	bl FUN_02026354
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x24]
	movs r1, #0x1f
	bl FUN_0200BBA0
	str r0, [r5, #0x3c]
	adds r0, r5, #0
	bl ov75_02247450
	adds r0, r5, #0
	bl ov75_02247790
	ldr r0, [r5]
	bl ov75_02246BE8
	cmp r0, #0xc
	beq _02247032
	cmp r0, #0x16
	beq _0224705E
	b _02247074
_02247032:
	blx FUN_021EC5B4
	cmp r0, #0
	bne _02247058
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_0203A05C
	cmp r0, #1
	bne _02247058
	movs r0, #0xc
	str r0, [r5, #8]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_02039528
	bl FUN_0203A880
	b _0224707C
_02247058:
	movs r0, #0
	str r0, [r5, #8]
	b _0224707C
_0224705E:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xe8
	str r1, [r0]
	bl FUN_0203A880
	ldr r0, [r5]
	bl ov75_02246BE8
	str r0, [r5, #8]
	b _0224707C
_02247074:
	ldr r0, [r5]
	bl ov75_02246BE8
	str r0, [r5, #8]
_0224707C:
	ldr r0, [r5]
	movs r1, #0
	bl ov75_02246BE0
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x74
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200FA24
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02022C60
	movs r0, #2
	movs r1, #1
	bl FUN_02022C60
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02022CC8
	movs r0, #2
	movs r1, #1
	bl FUN_02022CC8
	movs r0, #0x10
	movs r1, #1
	bl FUN_02022C60
	movs r0, #0x10
	movs r1, #1
	bl FUN_02022CC8
	ldr r0, _02247110 @ =0x021D116C
	movs r1, #1
	strb r1, [r0, #9]
	bl FUN_02022D3C
	movs r0, #1
	bl FUN_02002B34
	movs r0, #0
	bl FUN_02002B50
	movs r0, #0
	bl FUN_02002B8C
	ldr r0, _02247114 @ =ov75_02247234
	adds r1, r5, #0
	bl FUN_0201A0FC
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022470F4: .4byte 0xFFFFE0FF
_022470F8: .4byte 0x04001000
_022470FC: .4byte 0xFFFF1FFF
_02247100: .4byte 0x0000041C
_02247104: .4byte 0x00000307
_02247108: .4byte 0x0000030A
_0224710C: .4byte 0x0000010E
_02247110: .4byte 0x021D116C
_02247114: .4byte ov75_02247234
	thumb_func_end ov75_02246F0C

	thumb_func_start ov75_02247118
ov75_02247118: @ 0x02247118
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	bl FUN_02007290
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0
	beq _02247132
	cmp r1, #1
	beq _02247140
	cmp r1, #2
	beq _0224716C
	b _02247178
_02247132:
	bl FUN_0200FB5C
	cmp r0, #1
	bne _02247178
	movs r0, #1
	str r0, [r5]
	b _02247178
_02247140:
	ldr r6, [r4, #8]
	ldr r1, _0224717C @ =0x02249B30
	lsls r2, r6, #2
	ldr r1, [r1, r2]
	blx r1
	ldr r1, [r4, #8]
	cmp r6, r1
	beq _02247162
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0x94
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0x9c
	str r2, [r1]
	adds r4, #0x98
	str r2, [r4]
_02247162:
	cmp r0, #1
	bne _02247178
	movs r0, #2
	str r0, [r5]
	b _02247178
_0224716C:
	bl FUN_0200FB5C
	cmp r0, #1
	bne _02247178
	movs r0, #1
	pop {r4, r5, r6, pc}
_02247178:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224717C: .4byte 0x02249B30
	thumb_func_end ov75_02247118

	thumb_func_start ov75_02247180
ov75_02247180: @ 0x02247180
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02007290
	adds r4, r0, #0
	adds r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _022471A4
	bl FUN_0200E390
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xec
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf0
	str r1, [r0]
_022471A4:
	ldr r0, [r4, #0x34]
	bl FUN_0200BB44
	ldr r0, [r4, #0x28]
	bl FUN_0200BB44
	ldr r0, [r4, #0x30]
	bl FUN_0200BB44
	ldr r0, [r4, #0x2c]
	bl FUN_0200BB44
	ldr r0, [r4, #0x24]
	bl FUN_0200BB44
	ldr r0, [r4, #0x20]
	bl FUN_0200BDA0
	ldr r0, [r4, #0x3c]
	bl FUN_02026380
	ldr r0, [r4, #0x40]
	bl FUN_02026380
	ldr r0, [r4, #0x38]
	bl FUN_02026380
	adds r0, r4, #0
	bl ov75_02247838
	ldr r0, [r4, #4]
	bl FUN_0201AB0C
	ldr r0, [r4, #4]
	bl ov75_0224741C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201A0FC
	bl FUN_0201A108
	bl FUN_020205AC
	bl FUN_02021238
	movs r0, #0
	bl FUN_02002B34
	movs r0, #0
	bl FUN_02002B50
	movs r0, #0
	bl FUN_02002B8C
	bl FUN_0203A914
	adds r0, r5, #0
	bl FUN_02007294
	movs r0, #0x74
	bl FUN_0201A9C4
	ldr r0, _02247230 @ =0x021D116C
	movs r1, #0
	strb r1, [r0, #9]
	bl FUN_02022D3C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02247230: .4byte 0x021D116C
	thumb_func_end ov75_02247180

	thumb_func_start ov75_02247234
ov75_02247234: @ 0x02247234
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0202061C
	bl FUN_0200B224
	ldr r0, [r4, #4]
	bl FUN_0201EEB4
	ldr r3, _02247254 @ =0x027E0000
	ldr r1, _02247258 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_02247254: .4byte 0x027E0000
_02247258: .4byte 0x00003FF8
	thumb_func_end ov75_02247234

	thumb_func_start ov75_0224725C
ov75_0224725C: @ 0x0224725C
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	adds r4, r0, #0
	bl FUN_02022C54
	bl FUN_02022CBC
	ldr r5, _0224740C @ =0x022499FC
	add r3, sp, #0x48
	movs r2, #5
_02247270:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02247270
	add r0, sp, #0x48
	bl FUN_02022BE8
	movs r1, #6
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x12
	blx FUN_020D47EC
	movs r1, #0x62
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x14
	lsls r2, r2, #0x10
	blx FUN_020D47EC
	movs r1, #0x19
	movs r2, #1
	movs r0, #0
	lsls r1, r1, #0x16
	lsls r2, r2, #0x12
	blx FUN_020D47EC
	movs r1, #0x66
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x14
	lsls r2, r2, #0x10
	blx FUN_020D47EC
	ldr r5, _02247410 @ =0x0224997C
	add r3, sp, #0x38
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201ACB0
	ldr r5, _02247414 @ =0x02249A5C
	add r3, sp, #0x70
	movs r2, #0xe
_022472D0:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _022472D0
	movs r1, #0
	adds r0, r4, #0
	add r2, sp, #0x70
	adds r3, r1, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201CAE0
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201BC8C
	movs r1, #0
	adds r0, r4, #0
	movs r2, #3
	adds r3, r1, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #1
	add r2, sp, #0x8c
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201CAE0
	movs r2, #0
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0xa8
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0201CAE0
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0xc4
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0201CAE0
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_0201BC8C
	movs r1, #3
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0201BC8C
	ldr r5, _02247418 @ =0x02249A24
	add r3, sp, #0
	movs r2, #7
_0224738E:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224738E
	adds r0, r4, #0
	movs r1, #4
	add r2, sp, #0
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0201CAE0
	movs r2, #0
	adds r0, r4, #0
	movs r1, #4
	adds r3, r2, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #3
	movs r3, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #5
	add r2, sp, #0x1c
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #5
	bl FUN_0201CAE0
	movs r2, #0
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl FUN_0201BC8C
	adds r0, r4, #0
	movs r1, #5
	movs r2, #3
	movs r3, #0
	bl FUN_0201BC8C
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x74
	bl FUN_0201C1C4
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x74
	bl FUN_0201C1C4
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	nop
_0224740C: .4byte 0x022499FC
_02247410: .4byte 0x0224997C
_02247414: .4byte 0x02249A5C
_02247418: .4byte 0x02249A24
	thumb_func_end ov75_0224725C

	thumb_func_start ov75_0224741C
ov75_0224741C: @ 0x0224741C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #3
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201BB4C
	pop {r4, pc}
	thumb_func_end ov75_0224741C

	thumb_func_start ov75_02247450
ov75_02247450: @ 0x02247450
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x10]
	ldr r0, [r0, #4]
	movs r1, #0x74
	str r0, [sp, #0x30]
	movs r0, #0x58
	bl FUN_02007688
	movs r2, #0
	str r2, [sp]
	movs r1, #0x74
	str r1, [sp, #4]
	movs r1, #3
	adds r3, r2, #0
	str r0, [sp, #0x2c]
	bl FUN_02007B8C
	movs r3, #0
	str r3, [sp]
	movs r0, #0x74
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	movs r1, #3
	movs r2, #4
	bl FUN_02007B8C
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x74
	bl FUN_0200304C
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x74
	bl FUN_0200304C
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl FUN_0202ADCC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x74
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200E644
	movs r1, #0
	str r1, [sp]
	movs r0, #0x74
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E3DC
	movs r0, #0
	str r0, [sp]
	movs r0, #0x74
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r1, #2
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E3DC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x74
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #2
	movs r3, #1
	bl FUN_02007B44
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x74
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #6
	movs r3, #1
	bl FUN_02007B68
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x74
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #0xb
	movs r3, #5
	bl FUN_02007B44
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x74
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #0xc
	movs r3, #5
	bl FUN_02007B68
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201C2D8
	movs r0, #4
	movs r1, #0
	bl FUN_0201C2D8
	ldr r0, [sp, #0x10]
	movs r2, #0x33
	adds r0, #0xec
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020D4994
	ldr r0, [sp, #0x2c]
	movs r1, #5
	add r2, sp, #0x3c
	movs r3, #0x74
	bl FUN_02007C48
	adds r4, r0, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	adds r1, #0xf4
	movs r2, #0x80
	blx FUN_020D47B8
	ldr r0, [sp, #0x3c]
	movs r2, #0x5d
	ldr r1, [sp, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020D47B8
	adds r0, r4, #0
	bl FUN_0201AB0C
	movs r0, #0
	movs r1, #0x5d
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, #0xf4
	str r0, [sp, #0x14]
_022475B6:
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	lsls r1, r0, #5
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x34]
_022475C8:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _022475D2
	bl GF_AssertFail
_022475D2:
	ldr r0, [sp, #0x34]
	movs r7, #1
	adds r6, r0, #2
	ldr r0, [sp, #0x18]
	adds r4, r0, #2
	ldr r0, [sp, #0x14]
	adds r5, r0, #2
	ldr r0, [sp, #0x20]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x38]
_022475EA:
	adds r0, r6, #0
	adds r0, #0xf4
	ldrh r0, [r0]
	ldr r3, [sp, #0x38]
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	bl FUN_02003DE8
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _022475EA
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _02247636
	movs r0, #3
	ldr r1, [sp, #0x20]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _022475C8
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x1c]
	b _022475C8
_02247636:
	ldr r0, [sp, #0x14]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _022475B6
	movs r1, #0x5d
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x2a
	lsls r1, r1, #4
	blx DC_FlushRange
	ldr r0, [sp, #0x10]
	movs r1, #1
	adds r0, #0xf0
	str r1, [r0]
	ldr r1, _022476E0 @ =0x00000418
	ldr r0, [sp, #0x10]
	movs r2, #0
	str r2, [r0, r1]
	ldr r1, [sp, #0x10]
	ldr r0, _022476E4 @ =ov75_022476E8
	adds r1, #0xec
	movs r2, #0x14
	bl FUN_0200E33C
	ldr r1, [sp, #0x10]
	adds r1, #0xec
	str r0, [r1]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x10]
	bl FUN_0200770C
	movs r0, #0xc7
	movs r1, #0x74
	bl FUN_02007688
	adds r4, r0, #0
	movs r0, #8
	movs r1, #0
	bl FUN_02022C60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x74
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	movs r1, #0xb
	movs r3, #3
	bl FUN_02007B44
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x74
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	movs r1, #0xa
	movs r3, #3
	bl FUN_02007B68
	movs r0, #0x20
	str r0, [sp]
	movs r3, #0x74
	str r3, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	adds r3, #0xac
	bl FUN_02007B8C
	adds r0, r4, #0
	bl FUN_0200770C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022476E0: .4byte 0x00000418
_022476E4: .4byte ov75_022476E8
	thumb_func_end ov75_02247450

	thumb_func_start ov75_022476E8
ov75_022476E8: @ 0x022476E8
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02247786
	ldr r1, _02247788 @ =0x0000032B
	movs r0, #1
	ldrb r2, [r4, r1]
	eors r2, r0
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	tst r0, r2
	bne _02247786
	adds r0, r1, #1
	ldr r0, [r4, r0]
	cmp r0, #1
	bhi _0224771E
	subs r0, r1, #3
	ldrsh r0, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x88
	lsls r0, r0, #5
	adds r0, r2, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020CFC6C
_0224771E:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224772C
	cmp r0, #2
	bne _02247742
_0224772C:
	movs r0, #0xca
	lsls r0, r0, #2
	ldrsh r0, [r4, r0]
	adds r1, r4, #0
	adds r1, #0x88
	lsls r0, r0, #5
	adds r0, r1, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020CFCC0
_02247742:
	ldr r0, _0224778C @ =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0224776A
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _02247786
	movs r2, #0x13
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0224776A:
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _02247786
	movs r2, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eors r1, r2
	strb r1, [r4, r0]
_02247786:
	pop {r4, pc}
	.align 2, 0
_02247788: .4byte 0x0000032B
_0224778C: .4byte 0x0000032A
	thumb_func_end ov75_022476E8

	thumb_func_start ov75_02247790
ov75_02247790: @ 0x02247790
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #4
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x68
	movs r2, #0
	bl FUN_0201D40C
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl FUN_0201D978
	movs r0, #1
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x81
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x58
	movs r2, #0
	movs r3, #4
	bl FUN_0201D40C
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl FUN_0201D978
	movs r3, #1
	ldr r0, _02247834 @ =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	ldr r1, [r4, #0x3c]
	adds r0, #0x58
	movs r2, #0
	bl ov75_02249684
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #0
	movs r3, #2
	bl FUN_0201D40C
	adds r4, #0x48
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201D978
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02247834: .4byte 0x000F0E00
	thumb_func_end ov75_02247790

	thumb_func_start ov75_02247838
ov75_02247838: @ 0x02247838
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x48
	bl FUN_0201D520
	adds r0, r4, #0
	adds r0, #0x58
	bl FUN_0201D520
	adds r4, #0x68
	adds r0, r4, #0
	bl FUN_0201D520
	pop {r4, pc}
	thumb_func_end ov75_02247838

	thumb_func_start ov75_02247854
ov75_02247854: @ 0x02247854
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov75_02247854

	thumb_func_start ov75_0224785C
ov75_0224785C: @ 0x0224785C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _02247876
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200F0AC
	adds r4, #0x8c
	str r0, [r4]
_02247876:
	pop {r4, pc}
	thumb_func_end ov75_0224785C

	thumb_func_start ov75_02247878
ov75_02247878: @ 0x02247878
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0224788E
	bl FUN_0200F450
	movs r0, #0
	adds r4, #0x8c
	str r0, [r4]
_0224788E:
	pop {r4, pc}
	thumb_func_end ov75_02247878

	thumb_func_start ov75_02247890
ov75_02247890: @ 0x02247890
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x74
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0201660C
	movs r3, #0
	movs r1, #0xe
	str r1, [sp, #0xc]
	str r5, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	movs r2, #0x19
	add r1, sp, #0
	strb r2, [r1, #0x10]
	movs r2, #0xa
	strb r2, [r1, #0x11]
	ldrb r4, [r1, #0x12]
	movs r2, #0xf
	adds r7, r0, #0
	bics r4, r2
	strb r4, [r1, #0x12]
	ldrb r2, [r1, #0x12]
	movs r4, #0xf0
	bics r2, r4
	lsls r4, r6, #0x18
	lsrs r4, r4, #0x18
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x18
	orrs r2, r4
	strb r2, [r1, #0x12]
	strb r3, [r1, #0x13]
	add r1, sp, #0
	bl FUN_020166FC
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov75_02247890

	thumb_func_start ov75_022478E0
ov75_022478E0: @ 0x022478E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _022478F4
	cmp r0, #1
	beq _022479C0
	b _02247A1C
_022478F4:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_02031744
	cmp r0, #1
	bne _0224790A
	ldr r3, _02247A5C @ =0x02249974
	ldr r4, _02247A60 @ =0x022499BC
	movs r7, #4
	ldr r2, _02247A64 @ =0x022499DC
	b _02247912
_0224790A:
	ldr r3, _02247A68 @ =0x02249978
	ldr r4, _02247A6C @ =0x0224998C
	ldr r2, _02247A70 @ =0x0224999C
	movs r7, #2
_02247912:
	add r6, sp, #0x14
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldrb r0, [r3, #1]
	adds r1, r5, #0
	adds r1, #0x78
	str r0, [sp]
	ldrb r0, [r3, #2]
	movs r2, #0
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	ldrb r3, [r3]
	ldr r0, [r5, #4]
	bl FUN_0201D40C
	adds r0, r7, #0
	movs r1, #0x74
	bl FUN_02014918
	adds r1, r5, #0
	adds r1, #0xa0
	movs r6, #0
	str r0, [r1]
	cmp r7, #0
	ble _02247972
_0224795A:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02014960
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r7
	blt _0224795A
_02247972:
	adds r0, r5, #0
	adds r0, #0x78
	str r0, [sp, #0x20]
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	adds r2, r1, #0
	movs r3, #0x74
	bl FUN_020011DC
	adds r1, r5, #0
	adds r1, #0xa4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E580
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200E9BC
	adds r0, r5, #0
	adds r0, #0x78
	bl FUN_0201D578
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r5, #0x94
	adds r0, r0, #1
	str r0, [r5]
	b _02247A56
_022479C0:
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_02001338
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _022479DC
	adds r0, r0, #1
	cmp r4, r0
	beq _02247A56
	b _02247A02
_022479DC:
	ldr r0, _02247A74 @ =0x000005DC
	bl FUN_0200604C
	ldr r0, [r5]
	movs r1, #6
	movs r2, #0
	bl ov75_02246BCC
	adds r0, r5, #0
	movs r1, #0x1d
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r5, #0x94
	adds r0, r0, #1
	str r0, [r5]
	b _02247A56
_02247A02:
	ldr r0, _02247A74 @ =0x000005DC
	bl FUN_0200604C
	adds r0, r5, #0
	adds r0, #0x9c
	str r4, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r5, #0x94
	adds r0, r0, #1
	str r0, [r5]
	b _02247A56
_02247A1C:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl FUN_02014950
	adds r0, r5, #0
	adds r0, #0xa4
	movs r1, #0
	ldr r0, [r0]
	adds r2, r1, #0
	bl FUN_02001434
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	bl FUN_0200E5D4
	adds r0, r5, #0
	adds r0, #0x78
	bl FUN_0201D8C8
	adds r0, r5, #0
	adds r0, #0x78
	bl FUN_0201D520
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [r5, #8]
_02247A56:
	movs r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02247A5C: .4byte 0x02249974
_02247A60: .4byte 0x022499BC
_02247A64: .4byte 0x022499DC
_02247A68: .4byte 0x02249978
_02247A6C: .4byte 0x0224998C
_02247A70: .4byte 0x0224999C
_02247A74: .4byte 0x000005DC
	thumb_func_end ov75_022478E0

	thumb_func_start ov75_02247A78
ov75_02247A78: @ 0x02247A78
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #4
	movs r2, #3
	bl ov75_02246BCC
	ldr r0, [r4]
	movs r1, #0x26
	bl ov75_02246BE0
	movs r0, #0x1d
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02247A78

	thumb_func_start ov75_02247A98
ov75_02247A98: @ 0x02247A98
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02247AAE
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02247AAE:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bhi _02247B8E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02247AC4: @ jump table
	.2byte _02247ACC - _02247AC4 - 2 @ case 0
	.2byte _02247AEA - _02247AC4 - 2 @ case 1
	.2byte _02247B0A - _02247AC4 - 2 @ case 2
	.2byte _02247B84 - _02247AC4 - 2 @ case 3
_02247ACC:
	ldr r0, _02247B94 @ =0x00000F0F
	movs r2, #0x19
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247B8E
_02247AEA:
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #0
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247B8E
_02247B0A:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _02247B4C
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	ldr r0, _02247B94 @ =0x00000F0F
	movs r2, #0x1a
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #4]
	movs r2, #1
	bl FUN_02031780
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247B8E
_02247B4C:
	cmp r0, #2
	bne _02247B8E
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	ldr r0, _02247B94 @ =0x00000F0F
	movs r2, #0x1b
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #4]
	adds r2, r1, #0
	bl FUN_02031780
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247B8E
_02247B84:
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl ov75_02247854
_02247B8E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02247B94: .4byte 0x00000F0F
	thumb_func_end ov75_02247A98

	thumb_func_start ov75_02247B98
ov75_02247B98: @ 0x02247B98
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02247BAE
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02247BAE:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bhi _02247C66
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02247BC4: @ jump table
	.2byte _02247BCC - _02247BC4 - 2 @ case 0
	.2byte _02247BEA - _02247BC4 - 2 @ case 1
	.2byte _02247C0A - _02247BC4 - 2 @ case 2
	.2byte _02247C5C - _02247BC4 - 2 @ case 3
_02247BCC:
	ldr r0, _02247C6C @ =0x00000F0F
	movs r2, #0x1c
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247C66
_02247BEA:
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #1
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247C66
_02247C0A:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _02247C48
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	ldr r0, _02247C6C @ =0x00000F0F
	movs r2, #0x1d
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_02031734
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247C66
_02247C48:
	cmp r0, #2
	bne _02247C66
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	movs r0, #0
	str r0, [r4, #8]
	b _02247C66
_02247C5C:
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl ov75_02247854
_02247C66:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02247C6C: .4byte 0x00000F0F
	thumb_func_end ov75_02247B98

	thumb_func_start ov75_02247C70
ov75_02247C70: @ 0x02247C70
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0xd4
	movs r1, #0xf
	bl FUN_0201D978
	ldr r0, [r4, #0x34]
	movs r1, #0x2a
	bl FUN_0200BBA0
	adds r5, r0, #0
	ldr r3, _02247D00 @ =0x02249B20
	movs r1, #0
	ldr r0, [r3, #4]
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3]
	adds r0, r4, #0
	adds r0, #0xd4
	adds r3, #0xc
	bl FUN_020200A8
	adds r0, r5, #0
	bl FUN_02026380
	ldr r0, [r4, #0x34]
	movs r1, #0x2b
	bl FUN_0200BBA0
	adds r5, r0, #0
	ldr r3, _02247D00 @ =0x02249B20
	movs r1, #0
	ldr r0, [r3, #0xc]
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3, #8]
	adds r0, r4, #0
	adds r0, #0xd4
	adds r3, #0xc
	bl FUN_020200A8
	adds r0, r5, #0
	bl FUN_02026380
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	adds r1, r4, #0
	lsls r3, r0, #3
	adds r0, r4, #0
	ldr r2, _02247D04 @ =0x02249B20
	adds r0, #0xe4
	ldr r5, _02247D08 @ =0x02249B24
	ldr r2, [r2, r3]
	ldr r0, [r0]
	ldr r3, [r5, r3]
	adds r1, #0xd4
	bl FUN_020157F0
	adds r4, #0xd4
	adds r0, r4, #0
	bl FUN_0201D578
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02247D00: .4byte 0x02249B20
_02247D04: .4byte 0x02249B20
_02247D08: .4byte 0x02249B24
	thumb_func_end ov75_02247C70

	thumb_func_start ov75_02247D0C
ov75_02247D0C: @ 0x02247D0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd4
	movs r1, #0xf
	bl FUN_0201D978
	adds r4, #0xd4
	adds r0, r4, #0
	bl FUN_0201D578
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02247D0C

	thumb_func_start ov75_02247D24
ov75_02247D24: @ 0x02247D24
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0xbc
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #8
	beq _02247D42
	b _02248030
_02247D42:
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #1
	adds r2, r0, #0
	adds r0, r4, #0
	eors r2, r1
	adds r0, #0xc0
	str r2, [r0]
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0xbc
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r3, r0, #6
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r3, r0
	bne _02247D70
	b _02247EAE
_02247D70:
	movs r0, #0x11
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #1
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_0201C8C4
	movs r0, #0x11
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #2
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_0201C8C4
	movs r0, #0x11
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #3
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_0201C8C4
	movs r3, #0x11
	adds r2, r4, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r5, [r2]
	movs r2, #0x14
	muls r2, r5, r2
	adds r2, r2, #4
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	bl FUN_0201C8C4
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xb
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_0201C8C4
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xc
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_0201C8C4
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xd
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_0201C8C4
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xe
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x11
	bl FUN_0201C8C4
	b _02247EC8
_02247EAE:
	movs r0, #0x11
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	movs r1, #3
	movs r3, #0xe
	bl FUN_0201C8C4
_02247EC8:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	bne _02247ED4
	b _0224800E
_02247ED4:
	movs r1, #3
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #5
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_0201C8C4
	movs r1, #3
	adds r2, r4, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #6
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_0201C8C4
	movs r1, #3
	adds r2, r4, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #7
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_0201C8C4
	movs r1, #3
	adds r2, r4, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #8
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0x11
	bl FUN_0201C8C4
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xf
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_0201C8C4
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_0201C8C4
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0x11
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_0201C8C4
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0x12
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x11
	bl FUN_0201C8C4
	b _02248028
_0224800E:
	movs r1, #3
	str r1, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	movs r2, #0
	movs r3, #0xe
	bl FUN_0201C8C4
_02248028:
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_0201EFBC
_02248030:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov75_02247D24

	thumb_func_start ov75_02248034
ov75_02248034: @ 0x02248034
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r0, #0xc4
	movs r1, #0xf
	bl FUN_0201D978
	ldr r0, [r7, #0x34]
	movs r1, #0x2c
	bl FUN_0200BBA0
	str r0, [sp, #0xc]
	bl FUN_02026800
	movs r1, #0x74
	bl FUN_02026354
	adds r6, r0, #0
	adds r0, r7, #0
	adds r0, #0xac
	ldr r4, [r0]
	adds r0, r4, #6
	cmp r4, r0
	bge _0224809E
	adds r0, r7, #0
	str r0, [sp, #0x10]
	adds r0, #0xc4
	movs r5, #0
	str r0, [sp, #0x10]
_0224806E:
	ldr r1, [sp, #0xc]
	adds r0, r6, #0
	adds r2, r4, #0
	bl FUN_02026860
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #4
	bl FUN_020200A8
	adds r0, r7, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r4, r4, #1
	adds r0, r0, #6
	adds r5, #0x10
	cmp r4, r0
	blt _0224806E
_0224809E:
	ldr r0, [sp, #0xc]
	bl FUN_02026380
	adds r0, r6, #0
	bl FUN_02026380
	adds r7, #0xc4
	adds r0, r7, #0
	bl FUN_0201D578
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov75_02248034

	thumb_func_start ov75_022480B8
ov75_022480B8: @ 0x022480B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	cmp r1, #0
	beq _022480D6
	cmp r1, #1
	bne _022480CE
	b _02248220
_022480CE:
	cmp r1, #2
	bne _022480D4
	b _022482CE
_022480D4:
	b _0224837C
_022480D6:
	ldr r0, [r5, #0x34]
	movs r1, #0x2c
	bl FUN_0200BBA0
	str r0, [sp, #0x14]
	bl FUN_02026820
	adds r1, r5, #0
	movs r2, #0
	adds r1, #0xac
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0xb0
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0xb8
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	movs r0, #5
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #0xc4
	movs r2, #2
	movs r3, #1
	bl FUN_0201D40C
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x7f
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #0xd4
	movs r2, #2
	movs r3, #1
	bl FUN_0201D40C
	adds r0, r5, #0
	adds r0, #0xc4
	movs r1, #0xf
	bl FUN_0201D978
	ldr r0, [sp, #0x14]
	bl FUN_02026800
	movs r1, #0x74
	bl FUN_02026354
	adds r7, r0, #0
	adds r0, r5, #0
	movs r6, #0
	str r0, [sp, #0x18]
	adds r0, #0xc4
	adds r4, r6, #0
	str r0, [sp, #0x18]
_02248168:
	ldr r1, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r6, #0
	bl FUN_02026860
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r1, #0
	adds r2, r7, #0
	movs r3, #4
	bl FUN_020200A8
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #6
	blt _02248168
	ldr r0, [sp, #0x14]
	bl FUN_02026380
	adds r0, r7, #0
	bl FUN_02026380
	adds r0, r5, #0
	adds r0, #0xc4
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E580
	adds r0, r5, #0
	adds r0, #0xc4
	bl FUN_0201D578
	adds r0, r5, #0
	adds r0, #0xd4
	movs r1, #0xf
	bl FUN_0201D978
	adds r0, r5, #0
	adds r0, #0xd4
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E580
	adds r0, r5, #0
	adds r0, #0xd4
	bl FUN_0201D578
	movs r0, #0x74
	bl FUN_02015788
	adds r1, r5, #0
	adds r1, #0xe4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #0xf
	bl FUN_0201D978
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200E9BC
	adds r0, r5, #0
	adds r0, #0x48
	bl FUN_0201D8C8
	movs r0, #8
	movs r1, #1
	bl FUN_02022C60
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	b _022483D8
_02248220:
	ldr r1, _022483E4 @ =0x021D110C
	adds r0, #0xac
	ldr r2, [r1, #0x4c]
	ldr r4, [r0]
	movs r0, #0x40
	tst r0, r2
	beq _02248248
	cmp r4, #0
	beq _022482BA
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
	b _022482BA
_02248248:
	movs r0, #0x80
	tst r0, r2
	beq _0224829C
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r1, r4, #6
	cmp r1, r0
	bge _0224826E
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
_0224826E:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r1, r0, #6
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r1, r0
	bne _022482BA
	adds r0, r5, #0
	bl ov75_02247C70
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
	b _022482BA
_0224829C:
	ldr r1, [r1, #0x48]
	movs r0, #2
	tst r0, r1
	beq _022482BA
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
	adds r0, r5, #0
	movs r1, #2
	adds r0, #0xb8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0xff
	adds r0, #0xa8
	str r1, [r0]
_022482BA:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r4, r0
	bne _022482C6
	b _022483D8
_022482C6:
	adds r0, r5, #0
	bl ov75_02248034
	b _022483D8
_022482CE:
	ldr r1, _022483E4 @ =0x021D110C
	movs r2, #0x10
	ldr r1, [r1, #0x48]
	tst r2, r1
	bne _022482DE
	movs r2, #0x20
	tst r2, r1
	beq _022482FC
_022482DE:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r5, #0
	adds r0, #0xb0
	str r1, [r0]
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
	adds r0, r5, #0
	bl ov75_02247C70
	b _022483D8
_022482FC:
	movs r2, #1
	tst r2, r1
	beq _02248326
	adds r0, #0xb0
	ldr r1, [r0]
	movs r0, #2
	subs r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	b _022483D8
_02248326:
	movs r2, #2
	adds r3, r1, #0
	tst r3, r2
	beq _02248348
	adds r0, #0xb8
	str r2, [r0]
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	b _022483D8
_02248348:
	movs r2, #0x40
	tst r1, r2
	beq _022483D8
	bl ov75_02247D0C
	ldr r0, _022483E8 @ =0x000005DC
	bl FUN_0200604C
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	adds r0, r5, #0
	bl ov75_02248034
	b _022483D8
_0224837C:
	adds r0, #0xc4
	movs r1, #0
	bl FUN_0200E5D4
	adds r0, r5, #0
	adds r0, #0xc4
	bl FUN_0201D8C8
	adds r0, r5, #0
	adds r0, #0xc4
	bl FUN_0201D520
	adds r0, r5, #0
	adds r0, #0xd4
	movs r1, #0
	bl FUN_0200E5D4
	adds r0, r5, #0
	adds r0, #0xd4
	bl FUN_0201D8C8
	adds r0, r5, #0
	adds r0, #0xd4
	bl FUN_0201D520
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	bl FUN_020157B8
	ldr r0, [r5, #4]
	movs r1, #3
	bl FUN_0201CAE0
	movs r0, #8
	movs r1, #0
	bl FUN_02022C60
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r5, #0xb8
	add sp, #0x1c
	ldr r0, [r5]
	pop {r4, r5, r6, r7, pc}
_022483D8:
	adds r0, r5, #0
	bl ov75_02247D24
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022483E4: .4byte 0x021D110C
_022483E8: .4byte 0x000005DC
	thumb_func_end ov75_022480B8

	thumb_func_start ov75_022483EC
ov75_022483EC: @ 0x022483EC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02248402
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02248402:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _022484DC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248418: @ jump table
	.2byte _02248422 - _02248418 - 2 @ case 0
	.2byte _0224842A - _02248418 - 2 @ case 1
	.2byte _02248438 - _02248418 - 2 @ case 2
	.2byte _02248484 - _02248418 - 2 @ case 3
	.2byte _022484BC - _02248418 - 2 @ case 4
_02248422:
	movs r0, #3
	adds r4, #0x94
	str r0, [r4]
	b _02248522
_0224842A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248522
_02248438:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _02248468
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	ldr r0, _02248528 @ =0x00000F0F
	movs r2, #9
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	movs r0, #4
	adds r4, #0x94
	str r0, [r4]
	b _02248522
_02248468:
	cmp r0, #2
	bne _02248522
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248522
_02248484:
	adds r0, r4, #0
	bl ov75_022480B8
	cmp r0, #1
	bne _022484AC
	ldr r0, _02248528 @ =0x00000F0F
	movs r2, #9
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248522
_022484AC:
	cmp r0, #2
	bne _02248522
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl ov75_02247854
	b _02248522
_022484BC:
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #0
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248522
_022484DC:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _022484FA
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	movs r0, #5
	str r0, [r4, #8]
	b _02248522
_022484FA:
	cmp r0, #2
	bne _02248522
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	ldr r0, _02248528 @ =0x00000F0F
	movs r2, #0xa
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl ov75_02247854
_02248522:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248528: .4byte 0x00000F0F
	thumb_func_end ov75_022483EC

	thumb_func_start ov75_0224852C
ov75_0224852C: @ 0x0224852C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #0
	bl ov75_02246BCC
	ldr r0, [r4]
	movs r1, #6
	bl ov75_02246BE0
	movs r0, #0x1d
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_0224852C

	thumb_func_start ov75_0224854C
ov75_0224854C: @ 0x0224854C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov75_02246CF8
	cmp r0, #1
	beq _02248564
	cmp r0, #2
	beq _0224856A
	cmp r0, #3
	beq _0224856A
	b _02248572
_02248564:
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
_0224856A:
	movs r0, #0x25
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
_02248572:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bne _02248580
	movs r0, #7
	str r0, [r4, #8]
_02248580:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov75_0224854C

	thumb_func_start ov75_02248584
ov75_02248584: @ 0x02248584
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _0224859A
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0224859A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _02248678
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022485B0: @ jump table
	.2byte _022485BA - _022485B0 - 2 @ case 0
	.2byte _022485C8 - _022485B0 - 2 @ case 1
	.2byte _022485E6 - _022485B0 - 2 @ case 2
	.2byte _02248606 - _022485B0 - 2 @ case 3
	.2byte _02248646 - _022485B0 - 2 @ case 4
_022485BA:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248678
_022485C8:
	ldr r0, _02248680 @ =0x00000F0F
	movs r2, #0xb
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248678
_022485E6:
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #0
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248678
_02248606:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _0224862C
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248678
_0224862C:
	cmp r0, #2
	bne _02248678
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl ov75_02247854
	b _02248678
_02248646:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_0203A05C
	cmp r0, #0
	bne _0224866E
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0
	bl ov75_02246BCC
	ldr r0, [r4]
	movs r1, #0xc
	bl ov75_02246BE0
	movs r0, #0x1d
	str r0, [r4, #8]
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0224866E:
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0xc
	bl ov75_02247854
_02248678:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02248680: .4byte 0x00000F0F
	thumb_func_end ov75_02248584

	thumb_func_start ov75_02248684
ov75_02248684: @ 0x02248684
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _022486C2
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	ldr r0, _022486E8 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov75_022494CC
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0xc
	bl ov75_02247854
	adds r0, r4, #0
	bl ov75_0224785C
	b _022486E2
_022486C2:
	cmp r0, #2
	bne _022486E2
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	bl FUN_0203957C
	ldr r0, [r4]
	movs r1, #6
	movs r2, #0
	bl ov75_02246BCC
	movs r0, #0x1d
	str r0, [r4, #8]
_022486E2:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022486E8: .4byte 0x00000F0F
	thumb_func_end ov75_02248684

	thumb_func_start ov75_022486EC
ov75_022486EC: @ 0x022486EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02248710 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x30]
	movs r2, #0x1a
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0xa
	bl ov75_02247854
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248710: .4byte 0x00000F0F
	thumb_func_end ov75_022486EC

	thumb_func_start ov75_02248714
ov75_02248714: @ 0x02248714
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203957C
	blx FUN_021EC8D8
	bl FUN_0203A914
	movs r0, #4
	bl FUN_0201A4CC
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02248744
	bl FUN_02237F2C
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_02248744:
	movs r0, #0xb
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov75_02248714

	thumb_func_start ov75_0224874C
ov75_0224874C: @ 0x0224874C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02248770 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x30]
	movs r2, #0x1b
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	movs r1, #0x23
	movs r2, #0x1d
	bl ov75_02247854
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248770: .4byte 0x00000F0F
	thumb_func_end ov75_0224874C

	thumb_func_start ov75_02248774
ov75_02248774: @ 0x02248774
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _0224878C
	cmp r0, #1
	beq _022487BC
	cmp r0, #2
	beq _022487D4
	b _022487F6
_0224878C:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_02039528
	bl FUN_0203A880
	ldr r0, _022487FC @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov75_022494CC
	adds r0, r4, #0
	bl ov75_0224785C
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022487F6
_022487BC:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022487F6
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022487F6
_022487D4:
	movs r0, #4
	bl FUN_0201A4BC
	ldr r0, [r4]
	movs r1, #2
	adds r0, #0x14
	movs r2, #1
	movs r3, #0x14
	blx FUN_021EC3F0
	movs r0, #2
	blx FUN_021EC454
	blx FUN_021EC4A4
	movs r0, #0xd
	str r0, [r4, #8]
_022487F6:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022487FC: .4byte 0x00000F0F
	thumb_func_end ov75_02248774

	thumb_func_start ov75_02248800
ov75_02248800: @ 0x02248800
	push {r4, lr}
	sub sp, #0x48
	adds r4, r0, #0
	blx FUN_021EC60C
	blx FUN_021EC5B4
	cmp r0, #0
	beq _022488A6
	blx FUN_021EC724
	cmp r0, #8
	bhi _02248886
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248826: @ jump table
	.2byte _02248886 - _02248826 - 2 @ case 0
	.2byte _02248886 - _02248826 - 2 @ case 1
	.2byte _02248886 - _02248826 - 2 @ case 2
	.2byte _02248886 - _02248826 - 2 @ case 3
	.2byte _0224889C - _02248826 - 2 @ case 4
	.2byte _02248886 - _02248826 - 2 @ case 5
	.2byte _02248886 - _02248826 - 2 @ case 6
	.2byte _02248838 - _02248826 - 2 @ case 7
	.2byte _02248886 - _02248826 - 2 @ case 8
_02248838:
	add r0, sp, #8
	add r1, sp, #4
	blx FUN_021EC11C
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	str r0, [r4, #0x1c]
	blx FUN_021EC210
	blx FUN_021EC8D8
	bl FUN_0203A914
	bl FUN_0203957C
	movs r0, #4
	bl FUN_0201A4CC
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0224887A
	bl FUN_02237F2C
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_0224887A:
	adds r0, r4, #0
	bl ov75_02247878
	movs r0, #0x1b
	str r0, [r4, #8]
	b _022488A6
_02248886:
	add r0, sp, #0
	blx FUN_021EC0FC
	adds r0, r4, #0
	bl ov75_02247878
	movs r0, #0x20
	str r0, [r4, #8]
	subs r0, #0x22
	str r0, [r4, #0x10]
	b _022488A6
_0224889C:
	add r0, sp, #0xc
	blx FUN_021EC9E0
	movs r0, #0xe
	str r0, [r4, #8]
_022488A6:
	movs r0, #0
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov75_02248800

	thumb_func_start ov75_022488AC
ov75_022488AC: @ 0x022488AC
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021ECD04
	movs r0, #0xf
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov75_022488AC

	thumb_func_start ov75_022488BC
ov75_022488BC: @ 0x022488BC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	blx FUN_021ECDC8
	cmp r0, #5
	bhi _02248984
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022488D6: @ jump table
	.2byte _022488E8 - _022488D6 - 2 @ case 0
	.2byte _02248984 - _022488D6 - 2 @ case 1
	.2byte _02248984 - _022488D6 - 2 @ case 2
	.2byte _022488E2 - _022488D6 - 2 @ case 3
	.2byte _022488E8 - _022488D6 - 2 @ case 4
	.2byte _022488E8 - _022488D6 - 2 @ case 5
_022488E2:
	movs r0, #0x10
	str r0, [r4, #8]
	b _02248984
_022488E8:
	adds r0, r4, #0
	bl ov75_02247878
	add r0, sp, #4
	add r1, sp, #0
	blx FUN_021EC11C
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0x18]
	blx FUN_021EC210
	blx FUN_021EC8D8
	bl FUN_0203A914
	bl FUN_0203957C
	movs r0, #4
	bl FUN_0201A4CC
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0224892C
	bl FUN_02237F2C
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_0224892C:
	movs r0, #0x1b
	str r0, [r4, #8]
	ldr r1, [sp]
	cmp r1, #7
	bhi _02248972
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02248942: @ jump table
	.2byte _02248972 - _02248942 - 2 @ case 0
	.2byte _02248952 - _02248942 - 2 @ case 1
	.2byte _02248952 - _02248942 - 2 @ case 2
	.2byte _02248964 - _02248942 - 2 @ case 3
	.2byte _02248956 - _02248942 - 2 @ case 4
	.2byte _0224896E - _02248942 - 2 @ case 5
	.2byte _02248960 - _02248942 - 2 @ case 6
	.2byte _0224896E - _02248942 - 2 @ case 7
_02248952:
	str r0, [r4, #8]
	b _02248972
_02248956:
	blx FUN_021FA0D8
	movs r0, #0x1b
	str r0, [r4, #8]
	b _02248972
_02248960:
	str r0, [r4, #8]
	b _02248972
_02248964:
	blx FUN_021ED9B4
	movs r0, #0x1b
	str r0, [r4, #8]
	b _02248972
_0224896E:
	bl FUN_020399EC
_02248972:
	ldr r1, [sp, #4]
	ldr r0, _0224898C @ =0xFFFFB1E0
	cmp r1, r0
	bge _02248984
	ldr r0, _02248990 @ =0xFFFF8AD1
	cmp r1, r0
	blt _02248984
	movs r0, #0x1b
	str r0, [r4, #8]
_02248984:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0224898C: .4byte 0xFFFFB1E0
_02248990: .4byte 0xFFFF8AD1
	thumb_func_end ov75_022488BC

	thumb_func_start ov75_02248994
ov75_02248994: @ 0x02248994
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_0202C6F4
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_02028D30
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0202C08C
	adds r7, r0, #0
	adds r0, r4, #0
	bl FUN_02028DD8
	cmp r0, #0
	bne _022489CC
	adds r0, r6, #0
	bl FUN_0203A040
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02028DDC
_022489CC:
	adds r0, r4, #0
	bl FUN_02028DD8
	adds r4, r0, #0
	adds r0, r7, #0
	blx FUN_020A0310
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	adds r1, r3, #0
	bl FUN_022378C0
	movs r0, #0x46
	ldr r1, [r5]
	movs r2, #1
	lsls r0, r0, #2
	str r2, [r1, r0]
	movs r0, #0x11
	str r0, [r5, #8]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov75_02248994

	thumb_func_start ov75_022489F8
ov75_022489F8: @ 0x022489F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov75_02246CA0
	ldr r0, [r4]
	bl ov75_02246CB8
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x98
	adds r1, #0xfc
	bl FUN_02238304
	movs r0, #0x12
	str r0, [r4, #8]
	movs r0, #0
	adds r4, #0xe8
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov75_022489F8

	thumb_func_start ov75_02248A20
ov75_02248A20: @ 0x02248A20
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02237F38
	cmp r0, #0
	bne _02248A2E
	b _02248B56
_02248A2E:
	bl FUN_02237F58
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf
	cmp r0, #0x11
	bls _02248A46
	b _02248B4A
_02248A46:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248A52: @ jump table
	.2byte _02248B2E - _02248A52 - 2 @ case 0
	.2byte _02248B3C - _02248A52 - 2 @ case 1
	.2byte _02248B4A - _02248A52 - 2 @ case 2
	.2byte _02248B2E - _02248A52 - 2 @ case 3
	.2byte _02248B4A - _02248A52 - 2 @ case 4
	.2byte _02248B4A - _02248A52 - 2 @ case 5
	.2byte _02248B4A - _02248A52 - 2 @ case 6
	.2byte _02248B4A - _02248A52 - 2 @ case 7
	.2byte _02248B4A - _02248A52 - 2 @ case 8
	.2byte _02248B4A - _02248A52 - 2 @ case 9
	.2byte _02248B4A - _02248A52 - 2 @ case 10
	.2byte _02248B4A - _02248A52 - 2 @ case 11
	.2byte _02248B4A - _02248A52 - 2 @ case 12
	.2byte _02248B3C - _02248A52 - 2 @ case 13
	.2byte _02248B20 - _02248A52 - 2 @ case 14
	.2byte _02248A76 - _02248A52 - 2 @ case 15
	.2byte _02248B12 - _02248A52 - 2 @ case 16
	.2byte _02248B20 - _02248A52 - 2 @ case 17
_02248A76:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	beq _02248A8C
	cmp r0, #1
	beq _02248AE6
	cmp r0, #2
	beq _02248AF6
	b _02248B06
_02248A8C:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #3
	bhi _02248AE0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248AA2: @ jump table
	.2byte _02248AC0 - _02248AA2 - 2 @ case 0
	.2byte _02248AAA - _02248AA2 - 2 @ case 1
	.2byte _02248AB0 - _02248AA2 - 2 @ case 2
	.2byte _02248AD0 - _02248AA2 - 2 @ case 3
_02248AAA:
	movs r0, #0x13
	str r0, [r4, #8]
	b _02248B74
_02248AB0:
	adds r0, r4, #0
	bl ov75_02247878
	ldr r0, _02248B78 @ =0xFFFFEC77
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248AC0:
	adds r0, r4, #0
	bl ov75_02247878
	ldr r0, _02248B7C @ =0xFFFFEC76
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248AD0:
	adds r0, r4, #0
	bl ov75_02247878
	ldr r0, _02248B80 @ =0xFFFFEC75
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248AE0:
	bl FUN_020399EC
	b _02248B74
_02248AE6:
	adds r0, r4, #0
	bl ov75_02247878
	ldr r0, _02248B84 @ =0xFFFFEC74
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248AF6:
	adds r0, r4, #0
	bl ov75_02247878
	ldr r0, _02248B88 @ =0xFFFFEC73
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248B06:
	adds r0, r4, #0
	bl ov75_02247878
	bl FUN_020399EC
	b _02248B74
_02248B12:
	adds r0, r4, #0
	bl ov75_02247878
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248B20:
	adds r0, r4, #0
	bl ov75_02247878
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248B2E:
	adds r0, r4, #0
	bl ov75_02247878
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248B3C:
	adds r0, r4, #0
	bl ov75_02247878
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248B74
_02248B4A:
	adds r0, r4, #0
	bl ov75_02247878
	bl FUN_020399EC
	b _02248B74
_02248B56:
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r4, #0xe8
	movs r0, #0xe1
	ldr r1, [r4]
	lsls r0, r0, #4
	cmp r1, r0
	bne _02248B74
	bl FUN_020399EC
_02248B74:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02248B78: .4byte 0xFFFFEC77
_02248B7C: .4byte 0xFFFFEC76
_02248B80: .4byte 0xFFFFEC75
_02248B84: .4byte 0xFFFFEC74
_02248B88: .4byte 0xFFFFEC73
	thumb_func_end ov75_02248A20

	thumb_func_start ov75_02248B8C
ov75_02248B8C: @ 0x02248B8C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02248BA2
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02248BA2:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bhi _02248C58
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248BB8: @ jump table
	.2byte _02248BC0 - _02248BB8 - 2 @ case 0
	.2byte _02248BE4 - _02248BB8 - 2 @ case 1
	.2byte _02248C04 - _02248BB8 - 2 @ case 2
	.2byte _02248C3E - _02248BB8 - 2 @ case 3
_02248BC0:
	adds r0, r4, #0
	bl ov75_02247878
	ldr r0, _02248C60 @ =0x00000F0F
	movs r2, #0xd
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248C58
_02248BE4:
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #0
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248C58
_02248C04:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _02248C2A
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248C58
_02248C2A:
	cmp r0, #2
	bne _02248C58
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	movs r0, #0x15
	str r0, [r4, #8]
	b _02248C58
_02248C3E:
	ldr r0, _02248C60 @ =0x00000F0F
	movs r2, #0x11
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0x14
	bl ov75_02247854
_02248C58:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02248C60: .4byte 0x00000F0F
	thumb_func_end ov75_02248B8C

	thumb_func_start ov75_02248C64
ov75_02248C64: @ 0x02248C64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #2
	movs r2, #1
	bl ov75_02246BCC
	ldr r0, [r4]
	movs r1, #0x16
	bl ov75_02246BE0
	movs r0, #0x1e
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02248C64

	thumb_func_start ov75_02248C84
ov75_02248C84: @ 0x02248C84
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02248C9A
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02248C9A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _02248CAE
	cmp r0, #1
	beq _02248CCC
	cmp r0, #2
	beq _02248CEC
	b _02248D22
_02248CAE:
	ldr r0, _02248D28 @ =0x00000F0F
	movs r2, #0xe
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248D22
_02248CCC:
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #0
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248D22
_02248CEC:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020168F4
	cmp r0, #1
	bne _02248D10
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	adds r0, r4, #0
	movs r1, #0x1a
	movs r2, #0
	bl ov75_02247854
	b _02248D22
_02248D10:
	cmp r0, #2
	bne _02248D22
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02016624
	movs r0, #0x13
	str r0, [r4, #8]
_02248D22:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248D28: .4byte 0x00000F0F
	thumb_func_end ov75_02248C84

	thumb_func_start ov75_02248D2C
ov75_02248D2C: @ 0x02248D2C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov75_02246CE0
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02248D46
	movs r0, #0x15
	str r0, [r4, #8]
	movs r0, #0
	pop {r3, r4, r5, pc}
_02248D46:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bls _02248D52
	b _02248F00
_02248D52:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248D5E: @ jump table
	.2byte _02248D66 - _02248D5E - 2 @ case 0
	.2byte _02248D9C - _02248D5E - 2 @ case 1
	.2byte _02248ECE - _02248D5E - 2 @ case 2
	.2byte _02248EEC - _02248D5E - 2 @ case 3
_02248D66:
	ldr r0, _02248F04 @ =0x00000F0F
	movs r2, #0x12
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #0
	bl ov75_022494CC
	adds r0, r4, #0
	bl ov75_0224785C
	ldr r0, [r4]
	bl ov75_02246CCC
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x98
	adds r1, #0xfc
	bl FUN_02238304
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248F00
_02248D9C:
	bl FUN_02237F38
	cmp r0, #0
	bne _02248DA6
	b _02248EAE
_02248DA6:
	bl FUN_02237F58
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r0, r4, #0
	bl ov75_02247878
	adds r0, r5, #0
	adds r0, #0xf
	cmp r0, #0x11
	bhi _02248EA8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248DCE: @ jump table
	.2byte _02248E98 - _02248DCE - 2 @ case 0
	.2byte _02248EA0 - _02248DCE - 2 @ case 1
	.2byte _02248EA8 - _02248DCE - 2 @ case 2
	.2byte _02248E98 - _02248DCE - 2 @ case 3
	.2byte _02248EA8 - _02248DCE - 2 @ case 4
	.2byte _02248EA8 - _02248DCE - 2 @ case 5
	.2byte _02248EA8 - _02248DCE - 2 @ case 6
	.2byte _02248EA8 - _02248DCE - 2 @ case 7
	.2byte _02248EA8 - _02248DCE - 2 @ case 8
	.2byte _02248EA8 - _02248DCE - 2 @ case 9
	.2byte _02248EA8 - _02248DCE - 2 @ case 10
	.2byte _02248EA8 - _02248DCE - 2 @ case 11
	.2byte _02248EA8 - _02248DCE - 2 @ case 12
	.2byte _02248EA0 - _02248DCE - 2 @ case 13
	.2byte _02248E90 - _02248DCE - 2 @ case 14
	.2byte _02248DF2 - _02248DCE - 2 @ case 15
	.2byte _02248E88 - _02248DCE - 2 @ case 16
	.2byte _02248E90 - _02248DCE - 2 @ case 17
_02248DF2:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	beq _02248E08
	cmp r0, #1
	beq _02248E6A
	cmp r0, #2
	beq _02248E74
	b _02248E7E
_02248E08:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #3
	bhi _02248E64
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248E1E: @ jump table
	.2byte _02248E26 - _02248E1E - 2 @ case 0
	.2byte _02248E50 - _02248E1E - 2 @ case 1
	.2byte _02248E5A - _02248E1E - 2 @ case 2
	.2byte _02248E34 - _02248E1E - 2 @ case 3
_02248E26:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248F00
_02248E34:
	ldr r0, _02248F04 @ =0x00000F0F
	movs r2, #0x13
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0x15
	bl ov75_02247854
	b _02248F00
_02248E50:
	ldr r0, _02248F08 @ =0xFFFFEC72
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248E5A:
	ldr r0, _02248F0C @ =0xFFFFEC71
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248E64:
	bl FUN_020399EC
	b _02248F00
_02248E6A:
	ldr r0, _02248F10 @ =0xFFFFEC6E
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248E74:
	ldr r0, _02248F14 @ =0xFFFFEC6D
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248E7E:
	bl GF_AssertFail
	bl FUN_020399EC
	b _02248F00
_02248E88:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248E90:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248E98:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248EA0:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248F00
_02248EA8:
	bl FUN_020399EC
	b _02248F00
_02248EAE:
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r4, #0xe8
	movs r0, #0xe1
	ldr r1, [r4]
	lsls r0, r0, #4
	cmp r1, r0
	bne _02248F00
	bl FUN_020399EC
	b _02248F00
_02248ECE:
	ldr r0, _02248F04 @ =0x00000F0F
	movs r2, #0x14
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248F00
_02248EEC:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _02248F00
	adds r0, r4, #0
	movs r1, #0x1a
	movs r2, #0x17
	bl ov75_02247854
_02248F00:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02248F04: .4byte 0x00000F0F
_02248F08: .4byte 0xFFFFEC72
_02248F0C: .4byte 0xFFFFEC71
_02248F10: .4byte 0xFFFFEC6E
_02248F14: .4byte 0xFFFFEC6D
	thumb_func_end ov75_02248D2C

	thumb_func_start ov75_02248F18
ov75_02248F18: @ 0x02248F18
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02248F2E
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02248F2E:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _02248F3E
	cmp r0, #1
	beq _02248F5C
	b _02248F72
_02248F3E:
	ldr r0, _02248F78 @ =0x00000F0F
	movs r2, #0x15
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248F72
_02248F5C:
	ldr r0, [r4]
	movs r1, #3
	movs r2, #2
	bl ov75_02246BCC
	ldr r0, [r4]
	movs r1, #0x18
	bl ov75_02246BE0
	movs r0, #0x1e
	str r0, [r4, #8]
_02248F72:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248F78: .4byte 0x00000F0F
	thumb_func_end ov75_02248F18

	thumb_func_start ov75_02248F7C
ov75_02248F7C: @ 0x02248F7C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02248F92
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02248F92:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _02248FA2
	cmp r0, #1
	beq _02248FC0
	b _02248FDC
_02248FA2:
	ldr r0, _02248FE4 @ =0x00000F0F
	movs r2, #0x18
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248FDC
_02248FC0:
	ldr r0, [r4]
	bl ov75_02246C3C
	ldr r0, [r4]
	bl ov75_02246C68
	ldr r0, [r4]
	bl ov75_02246C8C
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl ov75_02247854
_02248FDC:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02248FE4: .4byte 0x00000F0F
	thumb_func_end ov75_02248F7C

	thumb_func_start ov75_02248FE8
ov75_02248FE8: @ 0x02248FE8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x94
	ldr r1, [r1]
	cmp r1, #3
	bhi _022490CA
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02249004: @ jump table
	.2byte _0224900C - _02249004 - 2 @ case 0
	.2byte _0224902E - _02249004 - 2 @ case 1
	.2byte _02249090 - _02249004 - 2 @ case 2
	.2byte _022490A8 - _02249004 - 2 @ case 3
_0224900C:
	ldr r1, _022490D0 @ =0x00000F0F
	movs r2, #0x20
	str r1, [sp]
	ldr r1, [r4, #0x34]
	movs r3, #0
	bl ov75_022494CC
	adds r0, r4, #0
	bl ov75_0224785C
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022490CA
_0224902E:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_020273F0
	cmp r0, #2
	bne _0224906C
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_02028E9C
	adds r2, r0, #0
	ldr r0, [r4, #0x20]
	movs r1, #0
	bl FUN_0200BE48
	ldr r0, _022490D0 @ =0x00000F0F
	movs r2, #0x21
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #0
	bl ov75_022494CC
	ldr r0, _022490D4 @ =0x0000061A
	bl FUN_0200604C
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_020274D8
	b _0224907C
_0224906C:
	ldr r0, _022490D0 @ =0x00000F0F
	movs r2, #0x22
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #0
	bl ov75_022494CC
_0224907C:
	adds r0, r4, #0
	bl ov75_02247878
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022490CA
_02249090:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022490CA
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022490CA
_022490A8:
	adds r0, #0x98
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0x3c
	ble _022490CA
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x98
	str r1, [r0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022490CA:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022490D0: .4byte 0x00000F0F
_022490D4: .4byte 0x0000061A
	thumb_func_end ov75_02248FE8

	thumb_func_start ov75_022490D8
ov75_022490D8: @ 0x022490D8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _022490EE
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_022490EE:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _022491C2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02249104: @ jump table
	.2byte _0224910E - _02249104 - 2 @ case 0
	.2byte _0224912C - _02249104 - 2 @ case 1
	.2byte _02249166 - _02249104 - 2 @ case 2
	.2byte _0224918E - _02249104 - 2 @ case 3
	.2byte _022491A6 - _02249104 - 2 @ case 4
_0224910E:
	ldr r0, _022491C8 @ =0x00000F0F
	movs r2, #0xf
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022491C2
_0224912C:
	blx FUN_021EC8D8
	bl FUN_0203A914
	bl FUN_0203957C
	movs r0, #4
	bl FUN_0201A4CC
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02249158
	bl FUN_02237F2C
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_02249158:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022491C2
_02249166:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022491C2
	ldr r0, _022491C8 @ =0x00000F0F
	movs r2, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022491C2
_0224918E:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022491C2
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022491C2
_022491A6:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x90
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _022491C2
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022491C2:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022491C8: .4byte 0x00000F0F
	thumb_func_end ov75_022490D8

	thumb_func_start ov75_022491CC
ov75_022491CC: @ 0x022491CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	rsbs r0, r0, #0
	bl FUN_021E6A70
	ldr r2, [r4, #0x18]
	adds r1, r0, #0
	adds r0, r4, #0
	rsbs r2, r2, #0
	bl ov75_0224971C
	movs r0, #0x1c
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_022491CC

	thumb_func_start ov75_022491F0
ov75_022491F0: @ 0x022491F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02249218 @ =0x021D110C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _02249204
	movs r0, #2
	tst r0, r1
	beq _02249212
_02249204:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl FUN_0200E5D4
	movs r0, #0
	str r0, [r4, #8]
_02249212:
	movs r0, #0
	pop {r4, pc}
	nop
_02249218: .4byte 0x021D110C
	thumb_func_end ov75_022491F0

	thumb_func_start ov75_0224921C
ov75_0224921C: @ 0x0224921C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0x1e
	beq _0224922C
	bl FUN_0203957C
_0224922C:
	bl FUN_0203A914
	adds r0, r4, #0
	bl ov75_02247878
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x74
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200FA24
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov75_0224921C

	thumb_func_start ov75_02249258
ov75_02249258: @ 0x02249258
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #0
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02249258

	thumb_func_start ov75_02249278
ov75_02249278: @ 0x02249278
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0
	ldr r0, [r4, #0x10]
	subs r2, r1, #5
	cmp r0, r2
	bgt _022492D6
	bge _0224930A
	adds r2, r1, #0
	subs r2, #0xf
	cmp r0, r2
	bgt _022492C4
	adds r2, r1, #0
	subs r2, #0xf
	cmp r0, r2
	bge _0224930A
	ldr r2, _02249374 @ =0x00001393
	adds r2, r0, r2
	cmp r2, #0xa
	bhi _0224930A
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022492AE: @ jump table
	.2byte _0224933E - _022492AE - 2 @ case 0
	.2byte _02249338 - _022492AE - 2 @ case 1
	.2byte _0224930A - _022492AE - 2 @ case 2
	.2byte _0224930A - _022492AE - 2 @ case 3
	.2byte _02249332 - _022492AE - 2 @ case 4
	.2byte _0224932C - _022492AE - 2 @ case 5
	.2byte _02249326 - _022492AE - 2 @ case 6
	.2byte _02249320 - _022492AE - 2 @ case 7
	.2byte _0224931A - _022492AE - 2 @ case 8
	.2byte _02249314 - _022492AE - 2 @ case 9
	.2byte _0224930E - _022492AE - 2 @ case 10
_022492C4:
	movs r2, #0xd
	mvns r2, r2
	cmp r0, r2
	bgt _022492D0
	beq _02249306
	b _0224930A
_022492D0:
	adds r2, r2, #2
	cmp r0, r2
	b _0224930A
_022492D6:
	subs r2, r1, #1
	cmp r0, r2
	bgt _022492F0
	bge _02249302
	subs r2, r1, #3
	cmp r0, r2
	bgt _022492E8
	cmp r0, r2
	b _0224930A
_022492E8:
	subs r2, r1, #2
	cmp r0, r2
	beq _02249306
	b _0224930A
_022492F0:
	cmp r0, #1
	bgt _022492F8
	beq _022492FE
	b _0224930A
_022492F8:
	cmp r0, #2
	beq _02249302
	b _0224930A
_022492FE:
	movs r2, #0x36
	b _02249342
_02249302:
	movs r2, #0x37
	b _02249342
_02249306:
	movs r2, #0x39
	b _02249342
_0224930A:
	movs r2, #0x38
	b _02249342
_0224930E:
	movs r2, #0xb5
	adds r1, r1, #1
	b _02249342
_02249314:
	movs r2, #0xb6
	adds r1, r1, #1
	b _02249342
_0224931A:
	movs r2, #0xb6
	adds r1, r1, #1
	b _02249342
_02249320:
	movs r2, #0xb7
	adds r1, r1, #1
	b _02249342
_02249326:
	movs r2, #0xb8
	adds r1, r1, #1
	b _02249342
_0224932C:
	movs r2, #0xb6
	adds r1, r1, #1
	b _02249342
_02249332:
	movs r2, #0xb6
	adds r1, r1, #1
	b _02249342
_02249338:
	movs r2, #0xb7
	adds r1, r1, #1
	b _02249342
_0224933E:
	movs r2, #0xb8
	adds r1, r1, #1
_02249342:
	cmp r1, #0
	ldr r0, _02249378 @ =0x00000F0F
	bne _02249356
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
	b _02249362
_02249356:
	str r0, [sp]
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	movs r3, #1
	bl ov75_022494CC
_02249362:
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0x21
	bl ov75_02247854
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02249374: .4byte 0x00001393
_02249378: .4byte 0x00000F0F
	thumb_func_end ov75_02249278

	thumb_func_start ov75_0224937C
ov75_0224937C: @ 0x0224937C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x94
	ldr r1, [r1]
	cmp r1, #3
	bhi _02249434
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02249398: @ jump table
	.2byte _022493A0 - _02249398 - 2 @ case 0
	.2byte _022493BC - _02249398 - 2 @ case 1
	.2byte _02249400 - _02249398 - 2 @ case 2
	.2byte _0224941C - _02249398 - 2 @ case 3
_022493A0:
	ldr r1, _0224945C @ =0x00000F0F
	movs r2, #0xf
	str r1, [sp]
	ldr r1, [r4, #0x34]
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249456
_022493BC:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _02249456
	bl FUN_0203957C
	blx FUN_021EC8D8
	bl FUN_0203A914
	movs r0, #4
	bl FUN_0201A4CC
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022493F2
	bl FUN_02237F2C
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_022493F2:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249456
_02249400:
	ldr r1, _0224945C @ =0x00000F0F
	movs r2, #0x10
	str r1, [sp]
	ldr r1, [r4, #0x34]
	movs r3, #1
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249456
_0224941C:
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _02249456
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249456
_02249434:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x90
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _02249456
	ldr r0, [r4]
	bl ov75_02246BD8
	movs r0, #0x1d
	str r0, [r4, #8]
_02249456:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0224945C: .4byte 0x00000F0F
	thumb_func_end ov75_0224937C

	thumb_func_start ov75_02249460
ov75_02249460: @ 0x02249460
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _02249472
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_02249472:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_02249460

	thumb_func_start ov75_02249478
ov75_02249478: @ 0x02249478
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022494A0
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _02249494
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_02249494:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
_022494A0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov75_02249478

	thumb_func_start ov75_022494A4
ov75_022494A4: @ 0x022494A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #0
	bne _022494C8
	movs r1, #0x8d
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	movs r2, #0
	bl ov75_02247890
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022494C8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov75_022494A4

	thumb_func_start ov75_022494CC
ov75_022494CC: @ 0x022494CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl FUN_0200BBA0
	adds r6, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x38]
	adds r2, r6, #0
	bl FUN_0200CBBC
	adds r0, r6, #0
	bl FUN_02026380
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #0xf
	bl FUN_0201D978
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200E998
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x38]
	adds r0, #0x48
	movs r1, #1
	bl FUN_020200A8
	str r0, [r5, #0x44]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x90
	str r1, [r0]
	cmp r4, #0xff
	beq _0224952C
	cmp r4, #0
	bne _02249530
_0224952C:
	movs r0, #0xff
	str r0, [r5, #0x44]
_02249530:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov75_022494CC

	thumb_func_start ov75_02249534
ov75_02249534: @ 0x02249534
	push {r3, lr}
	cmp r0, #0xff
	beq _02249546
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02020094
	cmp r0, #0
	bne _0224954A
_02249546:
	movs r0, #0
	pop {r3, pc}
_0224954A:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov75_02249534

	thumb_func_start ov75_02249550
ov75_02249550: @ 0x02249550
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _02249566
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02249566:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _02249576
	cmp r0, #1
	beq _022495A2
	b _022495A6
_02249576:
	ldr r0, [r4]
	bl ov75_02246CF8
	cmp r0, #2
	bne _02249584
	movs r2, #0x26
	b _02249586
_02249584:
	movs r2, #0x27
_02249586:
	ldr r0, _022495AC @ =0x00000F0F
	movs r3, #1
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	bl ov75_022494CC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022495A6
_022495A2:
	movs r0, #5
	str r0, [r4, #8]
_022495A6:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022495AC: .4byte 0x00000F0F
	thumb_func_end ov75_02249550

	thumb_func_start ov75_022495B0
ov75_022495B0: @ 0x022495B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	ldr r4, [r6]
	bl ov75_02249534
	cmp r0, #1
	bne _022495C8
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022495C8:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _022495D8
	cmp r0, #1
	beq _0224963C
	b _02249640
_022495D8:
	adds r0, r4, #0
	bl ov75_02246CE8
	adds r5, r0, #0
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_020317BC
	cmp r5, r0
	bne _0224961E
	ldr r0, [r4, #4]
	bl FUN_02031774
	add r1, sp, #8
	movs r2, #0x73
	bl ov75_02249884
	movs r4, #0
	add r5, sp, #8
	movs r7, #2
_02249600:
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldr r2, [r5]
	adds r1, r4, #0
	movs r3, #4
	bl FUN_0200BFCC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blo _02249600
	movs r2, #0x29
	b _02249620
_0224961E:
	movs r2, #0x28
_02249620:
	ldr r0, _02249648 @ =0x00000F0F
	movs r3, #1
	str r0, [sp]
	ldr r1, [r6, #0x34]
	adds r0, r6, #0
	bl ov75_022494CC
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r6, #0x94
	adds r0, r0, #1
	str r0, [r6]
	b _02249640
_0224963C:
	movs r0, #0
	str r0, [r6, #8]
_02249640:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249648: .4byte 0x00000F0F
	thumb_func_end ov75_022495B0

	thumb_func_start ov75_0224964C
ov75_0224964C: @ 0x0224964C
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _0224965A
	cmp r3, #2
	beq _02249670
	b _0224967E
_0224965A:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002F30
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r2, r0, #1
	b _0224967E
_02249670:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002F30
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r2, r1, r0
_0224967E:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov75_0224964C

	thumb_func_start ov75_02249684
ov75_02249684: @ 0x02249684
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x24]
	adds r5, r0, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r6, r1, #0
	bl ov75_0224964C
	adds r3, r0, #0
	str r4, [sp]
	movs r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl FUN_020200FC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov75_02249684

	thumb_func_start ov75_022496B8
ov75_022496B8: @ 0x022496B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	adds r6, r1, #0
	lsls r0, r0, #8
	movs r1, #0x74
	bl FUN_02026354
	adds r4, r0, #0
	ldr r0, [r5, #0x30]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200BB6C
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x40]
	adds r2, r4, #0
	bl FUN_0200CBBC
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0xf
	bl FUN_0201D978
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E580
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x40]
	adds r0, #0x68
	movs r1, #1
	bl FUN_020200A8
	movs r0, #0xff
	str r0, [r5, #0x44]
	adds r0, r4, #0
	bl FUN_02026380
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov75_022496B8

	thumb_func_start ov75_0224971C
ov75_0224971C: @ 0x0224971C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	mvns r0, r0
	cmp r4, r0
	bne _0224972E
	movs r4, #0xb
_0224972E:
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	movs r1, #0
	movs r3, #5
	bl FUN_0200BFCC
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200E9BC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov75_022496B8
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov75_0224971C

	thumb_func_start ov75_02249758
ov75_02249758: @ 0x02249758
	push {r3, lr}
	cmp r2, #0
	bne _02249764
	ldr r0, _02249768 @ =0x000005DC
	bl FUN_0200604C
_02249764:
	pop {r3, pc}
	nop
_02249768: .4byte 0x000005DC
	thumb_func_end ov75_02249758

	thumb_func_start ov75_0224976C
ov75_0224976C: @ 0x0224976C
	push {r3, lr}
	cmp r2, #0
	bne _02249778
	ldr r0, _0224977C @ =0x000005DC
	bl FUN_0200604C
_02249778:
	pop {r3, pc}
	nop
_0224977C: .4byte 0x000005DC
	thumb_func_end ov75_0224976C

	thumb_func_start ov75_02249780
ov75_02249780: @ 0x02249780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r2, #0
	movs r4, #0
	adds r5, r1, #0
	ldr r2, _02249828 @ =0x02249ACC
	str r0, [sp]
	adds r1, r4, #0
	adds r0, r2, #0
	adds r3, r4, #0
_02249794:
	adds r6, r1, #0
	ldrsb r6, [r0, r6]
	adds r2, r2, #1
	adds r1, r1, #1
	strb r6, [r5, r4]
	ldrsb r6, [r2, r3]
	adds r4, r4, #1
	cmp r6, #0
	bne _02249794
	adds r0, r7, #0
	movs r1, #0xc8
	bl FUN_0201AA8C
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	movs r2, #0x64
	bl FUN_02026A68
	ldr r7, [sp, #4]
	movs r6, #0
_022497BE:
	ldrh r1, [r7]
	ldr r0, _0224982C @ =0x0000FFFF
	cmp r1, r0
	bne _022497CC
	movs r2, #0
	strb r2, [r5, r4]
	b _02249802
_022497CC:
	ldr r2, [sp, #4]
	lsls r3, r6, #1
	ldrh r3, [r2, r3]
	ldr r1, _02249830 @ =0x02249ADC
	movs r0, #0
_022497D6:
	ldrh r2, [r1]
	cmp r2, r3
	bne _022497EA
	ldr r1, _02249830 @ =0x02249ADC
	lsls r2, r0, #2
	adds r2, r1, r2
	movs r1, #2
	ldrsb r1, [r2, r1]
	strb r1, [r5, r4]
	b _022497F2
_022497EA:
	adds r0, r0, #1
	adds r1, r1, #4
	cmp r0, #0xa
	blo _022497D6
_022497F2:
	cmp r0, #0xa
	blo _022497FA
	bl GF_AssertFail
_022497FA:
	adds r4, r4, #1
	adds r7, r7, #2
	adds r6, r6, #1
	b _022497BE
_02249802:
	ldr r1, _02249834 @ =0x02249AD0
	adds r3, r2, #0
	adds r0, r1, #0
_02249808:
	adds r6, r2, #0
	ldrsb r6, [r0, r6]
	adds r1, r1, #1
	adds r2, r2, #1
	strb r6, [r5, r4]
	ldrsb r6, [r1, r3]
	adds r4, r4, #1
	cmp r6, #0
	bne _02249808
	movs r0, #0
	strb r0, [r5, r4]
	ldr r0, [sp, #4]
	bl FUN_0201AB0C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02249828: .4byte 0x02249ACC
_0224982C: .4byte 0x0000FFFF
_02249830: .4byte 0x02249ADC
_02249834: .4byte 0x02249AD0
	thumb_func_end ov75_02249780

	thumb_func_start ov75_02249838
ov75_02249838: @ 0x02249838
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	movs r1, #0xc8
	movs r5, #1
	bl FUN_0201AA8C
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x64
	bl FUN_02026A68
	ldrh r1, [r4]
	ldr r0, _0224987C @ =0x0000FFFF
	cmp r1, r0
	beq _02249870
	ldr r1, _02249880 @ =0x00000121
	adds r3, r4, #0
_0224985E:
	ldrh r2, [r3]
	cmp r2, r1
	beq _02249868
	movs r5, #0
	b _02249870
_02249868:
	adds r3, r3, #2
	ldrh r2, [r3]
	cmp r2, r0
	bne _0224985E
_02249870:
	adds r0, r4, #0
	bl FUN_0201AB0C
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0224987C: .4byte 0x0000FFFF
_02249880: .4byte 0x00000121
	thumb_func_end ov75_02249838

	thumb_func_start ov75_02249884
ov75_02249884: @ 0x02249884
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	adds r5, r0, #0
	adds r7, r1, #0
	str r4, [sp, #4]
_02249890:
	movs r0, #0
	str r0, [r7]
	str r0, [sp]
	b _022498CC
_02249898:
	cmp r0, #0
	bne _022498A4
	bne _022498B2
	bl GF_AssertFail
	b _022498B2
_022498A4:
	adds r4, r4, #1
_022498A6:
	ldrsb r0, [r5, r4]
	adds r6, r5, r4
	cmp r0, #0x30
	blt _02249898
	cmp r0, #0x39
	bgt _02249898
_022498B2:
	ldr r1, [r7]
	movs r0, #0xa
	muls r0, r1, r0
	str r0, [r7]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r4, r4, #1
	subs r1, #0x30
	adds r0, r0, r1
	str r0, [r7]
	ldr r0, [sp]
	adds r0, r0, #1
	str r0, [sp]
_022498CC:
	ldr r0, [sp]
	cmp r0, #4
	blt _022498A6
	ldr r0, [sp, #4]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02249890
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov75_02249884

	.rodata

_022498E4:
	.byte 0xB5, 0xA4, 0x22, 0x02, 0x0D, 0xA6, 0x22, 0x02, 0x59, 0xA7, 0x22, 0x02
	.byte 0x2C, 0x00, 0x00, 0x00, 0x0D, 0x6F, 0x24, 0x02, 0x19, 0x71, 0x24, 0x02, 0x81, 0x71, 0x24, 0x02
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x6D, 0x24, 0x02, 0x05, 0x6D, 0x24, 0x02, 0xF4, 0x98, 0x24, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x6D, 0x24, 0x02, 0x41, 0x6D, 0x24, 0x02, 0x20, 0x26, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xB5, 0x6D, 0x24, 0x02, 0xFD, 0x6D, 0x24, 0x02, 0x20, 0x26, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x3D, 0x6E, 0x24, 0x02, 0x79, 0x6E, 0x24, 0x02, 0x20, 0x26, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x3D, 0x6E, 0x24, 0x02, 0x79, 0x6E, 0x24, 0x02, 0x20, 0x26, 0x10, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xAD, 0x6E, 0x24, 0x02, 0xDD, 0x6E, 0x24, 0x02, 0xE4, 0x98, 0x24, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x61, 0x69, 0x24, 0x02, 0xD9, 0x69, 0x24, 0x02, 0x01, 0x6B, 0x24, 0x02
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x0B, 0x07, 0x14, 0x08, 0x0B, 0x0D, 0x14, 0x04, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6D, 0x97, 0x24, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00
	.byte 0x00, 0x08, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x59, 0x97, 0x24, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00
	.byte 0x00, 0x08, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1B, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1C, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00
	.byte 0x40, 0x77, 0x69, 0x69, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x00, 0x00, 0x00, 0x21, 0x01, 0x30, 0x00
	.byte 0x22, 0x01, 0x31, 0x00, 0x23, 0x01, 0x32, 0x00, 0x24, 0x01, 0x33, 0x00, 0x25, 0x01, 0x34, 0x00
	.byte 0x26, 0x01, 0x35, 0x00, 0x27, 0x01, 0x36, 0x00, 0x28, 0x01, 0x37, 0x00, 0x29, 0x01, 0x38, 0x00
	.byte 0x2A, 0x01, 0x39, 0x00

	.data

_02249B20:
	.byte 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0xE1, 0x78, 0x24, 0x02, 0x79, 0x7A, 0x24, 0x02, 0x99, 0x7A, 0x24, 0x02, 0x99, 0x7B, 0x24, 0x02
	.byte 0xED, 0x83, 0x24, 0x02, 0x2D, 0x85, 0x24, 0x02, 0x4D, 0x85, 0x24, 0x02, 0x85, 0x85, 0x24, 0x02
	.byte 0x85, 0x86, 0x24, 0x02, 0xED, 0x86, 0x24, 0x02, 0x15, 0x87, 0x24, 0x02, 0x4D, 0x87, 0x24, 0x02
	.byte 0x75, 0x87, 0x24, 0x02, 0x01, 0x88, 0x24, 0x02, 0xAD, 0x88, 0x24, 0x02, 0xBD, 0x88, 0x24, 0x02
	.byte 0x95, 0x89, 0x24, 0x02, 0xF9, 0x89, 0x24, 0x02, 0x21, 0x8A, 0x24, 0x02, 0x8D, 0x8B, 0x24, 0x02
	.byte 0x65, 0x8C, 0x24, 0x02, 0x85, 0x8C, 0x24, 0x02, 0x2D, 0x8D, 0x24, 0x02, 0x19, 0x8F, 0x24, 0x02
	.byte 0x7D, 0x8F, 0x24, 0x02, 0xE9, 0x8F, 0x24, 0x02, 0xD9, 0x90, 0x24, 0x02, 0xCD, 0x91, 0x24, 0x02
	.byte 0xF1, 0x91, 0x24, 0x02, 0x1D, 0x92, 0x24, 0x02, 0x1D, 0x92, 0x24, 0x02, 0x59, 0x92, 0x24, 0x02
	.byte 0x79, 0x92, 0x24, 0x02, 0x7D, 0x93, 0x24, 0x02, 0x61, 0x94, 0x24, 0x02, 0x79, 0x94, 0x24, 0x02
	.byte 0xA5, 0x94, 0x24, 0x02, 0x51, 0x95, 0x24, 0x02, 0xB1, 0x95, 0x24, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss

_02249BE0:
	.space 0x20