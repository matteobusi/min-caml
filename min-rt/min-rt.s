.data
.balign	8
l.4579:	# 128.000000
	.long	0x0
	.long	0x40600000
l.4577:	# 40000.000000
	.long	0x0
	.long	0x40e38800
l.4567:	# -2.000000
	.long	0x0
	.long	0xc0000000
l.4565:	# 0.100000
	.long	0x9999999a
	.long	0x3fb99999
l.4562:	# 0.200000
	.long	0x9999999a
	.long	0x3fc99999
l.4549:	# 20.000000
	.long	0x0
	.long	0x40340000
l.4547:	# 0.050000
	.long	0x9999999a
	.long	0x3fa99999
l.4542:	# 0.250000
	.long	0x0
	.long	0x3fd00000
l.4538:	# 255.000000
	.long	0x0
	.long	0x406fe000
l.4536:	# 3.141593
	.long	0x5a7ed197
	.long	0x400921fb
l.4534:	# 10.000000
	.long	0x0
	.long	0x40240000
l.4531:	# 850.000000
	.long	0x0
	.long	0x408a9000
l.4527:	# 0.500000
	.long	0x0
	.long	0x3fe00000
l.4525:	# 0.150000
	.long	0x33333333
	.long	0x3fc33333
l.4520:	# 9.549296
	.long	0x62316387
	.long	0x4023193d
l.4518:	# 15.000000
	.long	0x0
	.long	0x402e0000
l.4516:	# 0.000100
	.long	0xeb1c432d
	.long	0x3f1a36e2
l.4508:	# 100000000.000000
	.long	0x0
	.long	0x4197d784
l.4505:	# 1000000000.000000
	.long	0x0
	.long	0x41cdcd65
l.4501:	# -0.100000
	.long	0x9999999a
	.long	0xbfb99999
l.4499:	# 0.010000
	.long	0x47ae147b
	.long	0x3f847ae1
l.4497:	# -0.200000
	.long	0x9999999a
	.long	0xbfc99999
l.4490:	# 4.000000
	.long	0x0
	.long	0x40100000
l.4450:	# -200.000000
	.long	0x0
	.long	0xc0690000
l.4448:	# 0.017453
	.long	0xaa91ed06
	.long	0x3f91df46
l.4446:	# -1.000000
	.long	0x0
	.long	0xbff00000
l.4444:	# 1.000000
	.long	0x0
	.long	0x3ff00000
l.4442:	# 0.000000
	.long	0x0
	.long	0x0
l.4440:	# 2.000000
	.long	0x0
	.long	0x40000000
.text
xor.1977:
	cmpl	$0, %eax
	jne	je_else.5336
	movl	%ebx, %eax
	ret
je_else.5336:
	cmpl	$0, %ebx
	jne	je_else.5337
	movl	$1, %eax
	ret
je_else.5337:
	movl	$0, %eax
	ret
fsqr.1980:
	mulsd	%xmm0, %xmm0
	ret
fhalf.1982:
	movl	$l.4440, %eax
	movsd	0(%eax), %xmm1
	divsd	%xmm1, %xmm0
	ret
o_texturetype.1984:
	movl	0(%eax), %eax
	ret
o_form.1986:
	movl	4(%eax), %eax
	ret
o_reflectiontype.1988:
	movl	8(%eax), %eax
	ret
o_isinvert.1990:
	movl	24(%eax), %eax
	ret
o_isrot.1992:
	movl	12(%eax), %eax
	ret
o_param_a.1994:
	movl	16(%eax), %eax
	movsd	0(%eax), %xmm0
	ret
o_param_b.1996:
	movl	16(%eax), %eax
	movsd	8(%eax), %xmm0
	ret
o_param_c.1998:
	movl	16(%eax), %eax
	movsd	16(%eax), %xmm0
	ret
o_param_x.2000:
	movl	20(%eax), %eax
	movsd	0(%eax), %xmm0
	ret
o_param_y.2002:
	movl	20(%eax), %eax
	movsd	8(%eax), %xmm0
	ret
o_param_z.2004:
	movl	20(%eax), %eax
	movsd	16(%eax), %xmm0
	ret
o_diffuse.2006:
	movl	28(%eax), %eax
	movsd	0(%eax), %xmm0
	ret
o_hilight.2008:
	movl	28(%eax), %eax
	movsd	8(%eax), %xmm0
	ret
o_color_red.2010:
	movl	32(%eax), %eax
	movsd	0(%eax), %xmm0
	ret
o_color_green.2012:
	movl	32(%eax), %eax
	movsd	8(%eax), %xmm0
	ret
o_color_blue.2014:
	movl	32(%eax), %eax
	movsd	16(%eax), %xmm0
	ret
o_param_r1.2016:
	movl	36(%eax), %eax
	movsd	0(%eax), %xmm0
	ret
o_param_r2.2018:
	movl	36(%eax), %eax
	movsd	8(%eax), %xmm0
	ret
o_param_r3.2020:
	movl	36(%eax), %eax
	movsd	16(%eax), %xmm0
	ret
normalize_vector.2022:
	movsd	0(%eax), %xmm0
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	fsqr.1980
	subl	$8, %ebp
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm1
	movsd	%xmm0, 8(%ebp)
	movsd	%xmm1, %xmm0
	addl	$16, %ebp
	call	fsqr.1980
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	addsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm0
	movsd	%xmm1, 16(%ebp)
	addl	$24, %ebp
	call	fsqr.1980
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	addsd	%xmm1, %xmm0
	addl	$24, %ebp
	call	min_caml_sqrt
	subl	$24, %ebp
	movl	0(%ebp), %eax
	cmpl	$0, %eax
	jne	je_else.5338
	jmp	je_cont.5339
je_else.5338:
	xorpd	min_caml_fnegd, %xmm0
je_cont.5339:
	movl	4(%ebp), %eax
	movsd	0(%eax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 0(%eax)
	movsd	8(%eax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%eax)
	movsd	16(%eax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%eax)
	ret
sgn.2025:
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5341
	movl	$l.4446, %eax
	movsd	0(%eax), %xmm0
	ret
jbe_else.5341:
	movl	$l.4444, %eax
	movsd	0(%eax), %xmm0
	ret
rad.2027:
	movl	$l.4448, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	ret
read_environ.2029:
	movl	$min_caml_screen, %eax
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	min_caml_read_float
	subl	$8, %ebp
	movl	0(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_screen, %eax
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	min_caml_read_float
	subl	$8, %ebp
	movl	4(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_screen, %eax
	movl	%eax, 8(%ebp)
	addl	$16, %ebp
	call	min_caml_read_float
	subl	$16, %ebp
	movl	8(%ebp), %eax
	movsd	%xmm0, 16(%eax)
	addl	$16, %ebp
	call	min_caml_read_float
	subl	$16, %ebp
	addl	$16, %ebp
	call	rad.2027
	subl	$16, %ebp
	movl	$min_caml_cos_v, %eax
	movsd	%xmm0, 16(%ebp)
	movl	%eax, 24(%ebp)
	addl	$32, %ebp
	call	min_caml_cos
	subl	$32, %ebp
	movl	24(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_sin_v, %eax
	movsd	16(%ebp), %xmm0
	movl	%eax, 28(%ebp)
	addl	$32, %ebp
	call	min_caml_sin
	subl	$32, %ebp
	movl	28(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	addl	$32, %ebp
	call	min_caml_read_float
	subl	$32, %ebp
	addl	$32, %ebp
	call	rad.2027
	subl	$32, %ebp
	movl	$min_caml_cos_v, %eax
	movsd	%xmm0, 32(%ebp)
	movl	%eax, 40(%ebp)
	addl	$48, %ebp
	call	min_caml_cos
	subl	$48, %ebp
	movl	40(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_sin_v, %eax
	movsd	32(%ebp), %xmm0
	movl	%eax, 44(%ebp)
	addl	$48, %ebp
	call	min_caml_sin
	subl	$48, %ebp
	movl	44(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	addl	$48, %ebp
	call	min_caml_read_float
	subl	$48, %ebp
	addl	$48, %ebp
	call	min_caml_read_float
	subl	$48, %ebp
	addl	$48, %ebp
	call	rad.2027
	subl	$48, %ebp
	movsd	%xmm0, 48(%ebp)
	addl	$56, %ebp
	call	min_caml_sin
	subl	$56, %ebp
	movl	$min_caml_light, %eax
	xorpd	min_caml_fnegd, %xmm0
	movsd	%xmm0, 8(%eax)
	addl	$56, %ebp
	call	min_caml_read_float
	subl	$56, %ebp
	addl	$56, %ebp
	call	rad.2027
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	movsd	%xmm0, 56(%ebp)
	movsd	%xmm1, %xmm0
	addl	$64, %ebp
	call	min_caml_cos
	subl	$64, %ebp
	movsd	56(%ebp), %xmm1
	movsd	%xmm0, 64(%ebp)
	movsd	%xmm1, %xmm0
	addl	$72, %ebp
	call	min_caml_sin
	subl	$72, %ebp
	movl	$min_caml_light, %eax
	movsd	64(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%eax)
	movsd	56(%ebp), %xmm0
	addl	$72, %ebp
	call	min_caml_cos
	subl	$72, %ebp
	movl	$min_caml_light, %eax
	movsd	64(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%eax)
	movl	$min_caml_beam, %eax
	movl	%eax, 72(%ebp)
	addl	$80, %ebp
	call	min_caml_read_float
	subl	$80, %ebp
	movl	72(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_vp, %eax
	movl	$min_caml_cos_v, %ebx
	movsd	0(%ebx), %xmm0
	movl	$min_caml_sin_v, %ebx
	movsd	8(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$l.4450, %ebx
	movsd	0(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_vp, %eax
	movl	$min_caml_sin_v, %ebx
	movsd	0(%ebx), %xmm0
	xorpd	min_caml_fnegd, %xmm0
	movl	$l.4450, %ebx
	movsd	0(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_vp, %eax
	movl	$min_caml_cos_v, %ebx
	movsd	0(%ebx), %xmm0
	movl	$min_caml_cos_v, %ebx
	movsd	8(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$l.4450, %ebx
	movsd	0(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%eax)
	movl	$min_caml_view, %eax
	movl	$min_caml_vp, %ebx
	movsd	0(%ebx), %xmm0
	movl	$min_caml_screen, %ebx
	movsd	0(%ebx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_view, %eax
	movl	$min_caml_vp, %ebx
	movsd	8(%ebx), %xmm0
	movl	$min_caml_screen, %ebx
	movsd	8(%ebx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_view, %eax
	movl	$min_caml_vp, %ebx
	movsd	16(%ebx), %xmm0
	movl	$min_caml_screen, %ebx
	movsd	16(%ebx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%eax)
	ret
read_nth_object.2031:
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	min_caml_read_int
	subl	$8, %ebp
	cmpl	$-1, %eax
	jne	je_else.5344
	movl	$0, %eax
	ret
je_else.5344:
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	min_caml_read_int
	subl	$8, %ebp
	movl	%eax, 8(%ebp)
	addl	$16, %ebp
	call	min_caml_read_int
	subl	$16, %ebp
	movl	%eax, 12(%ebp)
	addl	$16, %ebp
	call	min_caml_read_int
	subl	$16, %ebp
	movl	$3, %ebx
	movl	$l.4442, %ecx
	movsd	0(%ecx), %xmm0
	movl	%eax, 16(%ebp)
	movl	%ebx, %eax
	addl	$24, %ebp
	call	min_caml_create_float_array
	subl	$24, %ebp
	movl	%eax, 20(%ebp)
	addl	$24, %ebp
	call	min_caml_read_float
	subl	$24, %ebp
	movl	20(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	addl	$24, %ebp
	call	min_caml_read_float
	subl	$24, %ebp
	movl	20(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	addl	$24, %ebp
	call	min_caml_read_float
	subl	$24, %ebp
	movl	20(%ebp), %eax
	movsd	%xmm0, 16(%eax)
	movl	$3, %ebx
	movl	$l.4442, %ecx
	movsd	0(%ecx), %xmm0
	movl	%ebx, %eax
	addl	$24, %ebp
	call	min_caml_create_float_array
	subl	$24, %ebp
	movl	%eax, 24(%ebp)
	addl	$32, %ebp
	call	min_caml_read_float
	subl	$32, %ebp
	movl	24(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	addl	$32, %ebp
	call	min_caml_read_float
	subl	$32, %ebp
	movl	24(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	addl	$32, %ebp
	call	min_caml_read_float
	subl	$32, %ebp
	movl	24(%ebp), %eax
	movsd	%xmm0, 16(%eax)
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 32(%ebp)
	addl	$40, %ebp
	call	min_caml_read_float
	subl	$40, %ebp
	movsd	32(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5346
	movl	$0, %eax
	jmp	jbe_cont.5347
jbe_else.5346:
	movl	$1, %eax
jbe_cont.5347:
	movl	$2, %ebx
	movl	$l.4442, %ecx
	movsd	0(%ecx), %xmm0
	movl	%eax, 40(%ebp)
	movl	%ebx, %eax
	addl	$48, %ebp
	call	min_caml_create_float_array
	subl	$48, %ebp
	movl	%eax, 44(%ebp)
	addl	$48, %ebp
	call	min_caml_read_float
	subl	$48, %ebp
	movl	44(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	addl	$48, %ebp
	call	min_caml_read_float
	subl	$48, %ebp
	movl	44(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	movl	$3, %ebx
	movl	$l.4442, %ecx
	movsd	0(%ecx), %xmm0
	movl	%ebx, %eax
	addl	$48, %ebp
	call	min_caml_create_float_array
	subl	$48, %ebp
	movl	%eax, 48(%ebp)
	addl	$56, %ebp
	call	min_caml_read_float
	subl	$56, %ebp
	movl	48(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	addl	$56, %ebp
	call	min_caml_read_float
	subl	$56, %ebp
	movl	48(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	addl	$56, %ebp
	call	min_caml_read_float
	subl	$56, %ebp
	movl	48(%ebp), %eax
	movsd	%xmm0, 16(%eax)
	movl	$3, %ebx
	movl	$l.4442, %ecx
	movsd	0(%ecx), %xmm0
	movl	%ebx, %eax
	addl	$56, %ebp
	call	min_caml_create_float_array
	subl	$56, %ebp
	movl	16(%ebp), %ebx
	cmpl	$0, %ebx
	jne	je_else.5348
	jmp	je_cont.5349
je_else.5348:
	movl	%eax, 52(%ebp)
	addl	$56, %ebp
	call	min_caml_read_float
	subl	$56, %ebp
	addl	$56, %ebp
	call	rad.2027
	subl	$56, %ebp
	movl	52(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	addl	$56, %ebp
	call	min_caml_read_float
	subl	$56, %ebp
	addl	$56, %ebp
	call	rad.2027
	subl	$56, %ebp
	movl	52(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	addl	$56, %ebp
	call	min_caml_read_float
	subl	$56, %ebp
	addl	$56, %ebp
	call	rad.2027
	subl	$56, %ebp
	movl	52(%ebp), %eax
	movsd	%xmm0, 16(%eax)
je_cont.5349:
	movl	8(%ebp), %ebx
	cmpl	$2, %ebx
	jne	je_else.5350
	movl	$1, %ecx
	jmp	je_cont.5351
je_else.5350:
	movl	40(%ebp), %ecx
je_cont.5351:
	movl	min_caml_hp, %edx
	addl	$40, min_caml_hp
	movl	%eax, 36(%edx)
	movl	48(%ebp), %esi
	movl	%esi, 32(%edx)
	movl	44(%ebp), %esi
	movl	%esi, 28(%edx)
	movl	%ecx, 24(%edx)
	movl	24(%ebp), %ecx
	movl	%ecx, 20(%edx)
	movl	20(%ebp), %ecx
	movl	%ecx, 16(%edx)
	movl	16(%ebp), %esi
	movl	%esi, 12(%edx)
	movl	12(%ebp), %edi
	movl	%edi, 8(%edx)
	movl	%ebx, 4(%edx)
	movl	4(%ebp), %edi
	movl	%edi, 0(%edx)
	movl	$min_caml_objects, %edi
	movl	%eax, 52(%ebp)
	movl	0(%ebp), %eax
	movl	%edx, (%edi,%eax,4)
	cmpl	$3, %ebx
	jne	je_else.5352
	movsd	0(%ecx), %xmm0
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm0, %xmm1
	jne	je_else.5354
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	jmp	je_cont.5355
je_else.5354:
	movsd	%xmm0, 56(%ebp)
	addl	$64, %ebp
	call	sgn.2025
	subl	$64, %ebp
	movsd	56(%ebp), %xmm1
	movsd	%xmm0, 64(%ebp)
	movsd	%xmm1, %xmm0
	addl	$72, %ebp
	call	fsqr.1980
	subl	$72, %ebp
	movsd	64(%ebp), %xmm1
	divsd	%xmm0, %xmm1
je_cont.5355:
	movl	20(%ebp), %eax
	movsd	%xmm1, 0(%eax)
	movsd	8(%eax), %xmm0
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm1
	comisd	%xmm0, %xmm1
	jne	je_else.5356
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm1
	jmp	je_cont.5357
je_else.5356:
	movsd	%xmm0, 72(%ebp)
	addl	$80, %ebp
	call	sgn.2025
	subl	$80, %ebp
	movsd	72(%ebp), %xmm1
	movsd	%xmm0, 80(%ebp)
	movsd	%xmm1, %xmm0
	addl	$88, %ebp
	call	fsqr.1980
	subl	$88, %ebp
	movsd	80(%ebp), %xmm1
	divsd	%xmm0, %xmm1
je_cont.5357:
	movl	20(%ebp), %eax
	movsd	%xmm1, 8(%eax)
	movsd	16(%eax), %xmm0
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm1
	comisd	%xmm0, %xmm1
	jne	je_else.5358
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm1
	jmp	je_cont.5359
je_else.5358:
	movsd	%xmm0, 88(%ebp)
	addl	$96, %ebp
	call	sgn.2025
	subl	$96, %ebp
	movsd	88(%ebp), %xmm1
	movsd	%xmm0, 96(%ebp)
	movsd	%xmm1, %xmm0
	addl	$104, %ebp
	call	fsqr.1980
	subl	$104, %ebp
	movsd	96(%ebp), %xmm1
	divsd	%xmm0, %xmm1
je_cont.5359:
	movl	20(%ebp), %eax
	movsd	%xmm1, 16(%eax)
	jmp	je_cont.5353
je_else.5352:
	cmpl	$2, %ebx
	jne	je_else.5360
	movl	40(%ebp), %eax
	cmpl	$0, %eax
	jne	je_else.5362
	movl	$1, %ebx
	jmp	je_cont.5363
je_else.5362:
	movl	$0, %ebx
je_cont.5363:
	movl	%ecx, %eax
	addl	$104, %ebp
	call	normalize_vector.2022
	subl	$104, %ebp
	jmp	je_cont.5361
je_else.5360:
je_cont.5361:
je_cont.5353:
	movl	16(%ebp), %eax
	cmpl	$0, %eax
	jne	je_else.5364
	jmp	je_cont.5365
je_else.5364:
	movl	$min_caml_cs_temp, %eax
	movl	52(%ebp), %ebx
	movsd	0(%ebx), %xmm0
	movl	%eax, 104(%ebp)
	addl	$112, %ebp
	call	min_caml_cos
	subl	$112, %ebp
	movl	104(%ebp), %eax
	movsd	%xmm0, 80(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	52(%ebp), %ebx
	movsd	0(%ebx), %xmm0
	movl	%eax, 108(%ebp)
	addl	$112, %ebp
	call	min_caml_sin
	subl	$112, %ebp
	movl	108(%ebp), %eax
	movsd	%xmm0, 88(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	52(%ebp), %ebx
	movsd	8(%ebx), %xmm0
	movl	%eax, 112(%ebp)
	addl	$120, %ebp
	call	min_caml_cos
	subl	$120, %ebp
	movl	112(%ebp), %eax
	movsd	%xmm0, 96(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	52(%ebp), %ebx
	movsd	8(%ebx), %xmm0
	movl	%eax, 116(%ebp)
	addl	$120, %ebp
	call	min_caml_sin
	subl	$120, %ebp
	movl	116(%ebp), %eax
	movsd	%xmm0, 104(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	52(%ebp), %ebx
	movsd	16(%ebx), %xmm0
	movl	%eax, 120(%ebp)
	addl	$128, %ebp
	call	min_caml_cos
	subl	$128, %ebp
	movl	120(%ebp), %eax
	movsd	%xmm0, 112(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	52(%ebp), %ebx
	movsd	16(%ebx), %xmm0
	movl	%eax, 124(%ebp)
	addl	$128, %ebp
	call	min_caml_sin
	subl	$128, %ebp
	movl	124(%ebp), %eax
	movsd	%xmm0, 120(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	96(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	112(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	88(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	104(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	112(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	80(%ebx), %xmm1
	movl	$min_caml_cs_temp, %ebx
	movsd	120(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	80(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	104(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	112(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	88(%ebx), %xmm1
	movl	$min_caml_cs_temp, %ebx
	movsd	120(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	96(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	120(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	88(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	104(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	120(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	80(%ebx), %xmm1
	movl	$min_caml_cs_temp, %ebx
	movsd	112(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	80(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	104(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	120(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	88(%ebx), %xmm1
	movl	$min_caml_cs_temp, %ebx
	movsd	112(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	104(%ebx), %xmm0
	xorpd	min_caml_fnegd, %xmm0
	movsd	%xmm0, 48(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	88(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	96(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%eax)
	movl	$min_caml_cs_temp, %eax
	movl	$min_caml_cs_temp, %ebx
	movsd	80(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	96(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%eax)
	movl	20(%ebp), %eax
	movsd	0(%eax), %xmm0
	movsd	8(%eax), %xmm1
	movsd	16(%eax), %xmm2
	movl	$min_caml_cs_temp, %ebx
	movsd	0(%ebx), %xmm3
	movsd	%xmm2, 128(%ebp)
	movsd	%xmm1, 136(%ebp)
	movsd	%xmm0, 144(%ebp)
	movsd	%xmm3, %xmm0
	addl	$152, %ebp
	call	fsqr.1980
	subl	$152, %ebp
	movsd	144(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %eax
	movsd	24(%eax), %xmm2
	movsd	%xmm0, 152(%ebp)
	movsd	%xmm2, %xmm0
	addl	$160, %ebp
	call	fsqr.1980
	subl	$160, %ebp
	movsd	136(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	152(%ebp), %xmm2
	addsd	%xmm0, %xmm2
	movl	$min_caml_cs_temp, %eax
	movsd	48(%eax), %xmm0
	movsd	%xmm2, 160(%ebp)
	addl	$168, %ebp
	call	fsqr.1980
	subl	$168, %ebp
	movsd	128(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	160(%ebp), %xmm2
	addsd	%xmm0, %xmm2
	movl	20(%ebp), %eax
	movsd	%xmm2, 0(%eax)
	movl	$min_caml_cs_temp, %ebx
	movsd	8(%ebx), %xmm0
	addl	$168, %ebp
	call	fsqr.1980
	subl	$168, %ebp
	movsd	144(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %eax
	movsd	32(%eax), %xmm2
	movsd	%xmm0, 168(%ebp)
	movsd	%xmm2, %xmm0
	addl	$176, %ebp
	call	fsqr.1980
	subl	$176, %ebp
	movsd	136(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	168(%ebp), %xmm2
	addsd	%xmm0, %xmm2
	movl	$min_caml_cs_temp, %eax
	movsd	56(%eax), %xmm0
	movsd	%xmm2, 176(%ebp)
	addl	$184, %ebp
	call	fsqr.1980
	subl	$184, %ebp
	movsd	128(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	176(%ebp), %xmm2
	addsd	%xmm0, %xmm2
	movl	20(%ebp), %eax
	movsd	%xmm2, 8(%eax)
	movl	$min_caml_cs_temp, %ebx
	movsd	16(%ebx), %xmm0
	addl	$184, %ebp
	call	fsqr.1980
	subl	$184, %ebp
	movsd	144(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_cs_temp, %eax
	movsd	40(%eax), %xmm2
	movsd	%xmm0, 184(%ebp)
	movsd	%xmm2, %xmm0
	addl	$192, %ebp
	call	fsqr.1980
	subl	$192, %ebp
	movsd	136(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	184(%ebp), %xmm2
	addsd	%xmm0, %xmm2
	movl	$min_caml_cs_temp, %eax
	movsd	64(%eax), %xmm0
	movsd	%xmm2, 192(%ebp)
	addl	$200, %ebp
	call	fsqr.1980
	subl	$200, %ebp
	movsd	128(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	192(%ebp), %xmm2
	addsd	%xmm0, %xmm2
	movl	20(%ebp), %eax
	movsd	%xmm2, 16(%eax)
	movl	$l.4440, %eax
	movsd	0(%eax), %xmm0
	movl	$min_caml_cs_temp, %eax
	movsd	8(%eax), %xmm2
	movsd	144(%ebp), %xmm3
	mulsd	%xmm3, %xmm2
	movl	$min_caml_cs_temp, %eax
	movsd	16(%eax), %xmm4
	mulsd	%xmm4, %xmm2
	movl	$min_caml_cs_temp, %eax
	movsd	32(%eax), %xmm4
	movsd	136(%ebp), %xmm5
	mulsd	%xmm5, %xmm4
	movl	$min_caml_cs_temp, %eax
	movsd	40(%eax), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movl	$min_caml_cs_temp, %eax
	movsd	56(%eax), %xmm4
	mulsd	%xmm1, %xmm4
	movl	$min_caml_cs_temp, %eax
	movsd	64(%eax), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm0
	movl	52(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$l.4440, %ebx
	movsd	0(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	0(%ebx), %xmm2
	mulsd	%xmm3, %xmm2
	movl	$min_caml_cs_temp, %ebx
	movsd	16(%ebx), %xmm4
	mulsd	%xmm4, %xmm2
	movl	$min_caml_cs_temp, %ebx
	movsd	24(%ebx), %xmm4
	mulsd	%xmm5, %xmm4
	movl	$min_caml_cs_temp, %ebx
	movsd	40(%ebx), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movl	$min_caml_cs_temp, %ebx
	movsd	48(%ebx), %xmm4
	mulsd	%xmm1, %xmm4
	movl	$min_caml_cs_temp, %ebx
	movsd	64(%ebx), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$l.4440, %ebx
	movsd	0(%ebx), %xmm0
	movl	$min_caml_cs_temp, %ebx
	movsd	0(%ebx), %xmm2
	mulsd	%xmm2, %xmm3
	movl	$min_caml_cs_temp, %ebx
	movsd	8(%ebx), %xmm2
	mulsd	%xmm2, %xmm3
	movl	$min_caml_cs_temp, %ebx
	movsd	24(%ebx), %xmm2
	mulsd	%xmm2, %xmm5
	movl	$min_caml_cs_temp, %ebx
	movsd	32(%ebx), %xmm2
	mulsd	%xmm2, %xmm5
	addsd	%xmm5, %xmm3
	movl	$min_caml_cs_temp, %ebx
	movsd	48(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_cs_temp, %ebx
	movsd	56(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 16(%eax)
je_cont.5365:
	movl	$1, %eax
	ret
read_object.2033:
	cmpl	$61, %eax
	jl	jge_else.5366
	ret
jge_else.5366:
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	read_nth_object.2031
	subl	$8, %ebp
	cmpl	$0, %eax
	jne	je_else.5368
	ret
je_else.5368:
	movl	0(%ebp), %eax
	addl	$1, %eax
	jmp	read_object.2033
read_all_object.2035:
	movl	$0, %eax
	jmp	read_object.2033
read_net_item.2037:
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	min_caml_read_int
	subl	$8, %ebp
	cmpl	$-1, %eax
	jne	je_else.5370
	movl	0(%ebp), %eax
	addl	$1, %eax
	movl	$-1, %ebx
	jmp	min_caml_create_array
je_else.5370:
	movl	0(%ebp), %ebx
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%eax, 4(%ebp)
	movl	%ecx, %eax
	addl	$8, %ebp
	call	read_net_item.2037
	subl	$8, %ebp
	movl	0(%ebp), %ebx
	movl	4(%ebp), %ecx
	movl	%ecx, (%eax,%ebx,4)
	ret
read_or_network.2039:
	movl	$0, %ebx
	movl	%eax, 0(%ebp)
	movl	%ebx, %eax
	addl	$8, %ebp
	call	read_net_item.2037
	subl	$8, %ebp
	movl	%eax, %ebx
	movl	0(%ebx), %eax
	cmpl	$-1, %eax
	jne	je_else.5371
	movl	0(%ebp), %eax
	addl	$1, %eax
	jmp	min_caml_create_array
je_else.5371:
	movl	0(%ebp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ebx, 4(%ebp)
	movl	%ecx, %eax
	addl	$8, %ebp
	call	read_or_network.2039
	subl	$8, %ebp
	movl	0(%ebp), %ebx
	movl	4(%ebp), %ecx
	movl	%ecx, (%eax,%ebx,4)
	ret
read_and_network.2041:
	movl	$0, %ebx
	movl	%eax, 0(%ebp)
	movl	%ebx, %eax
	addl	$8, %ebp
	call	read_net_item.2037
	subl	$8, %ebp
	movl	0(%eax), %ebx
	cmpl	$-1, %ebx
	jne	je_else.5372
	ret
je_else.5372:
	movl	$min_caml_and_net, %ebx
	movl	0(%ebp), %ecx
	movl	%eax, (%ebx,%ecx,4)
	movl	%ecx, %eax
	addl	$1, %eax
	jmp	read_and_network.2041
read_parameter.2043:
	call	read_environ.2029
	call	read_all_object.2035
	movl	$0, %eax
	call	read_and_network.2041
	movl	$min_caml_or_net, %eax
	movl	$0, %ebx
	movl	%eax, 0(%ebp)
	movl	%ebx, %eax
	addl	$8, %ebp
	call	read_or_network.2039
	subl	$8, %ebp
	movl	0(%ebp), %ebx
	movl	%eax, 0(%ebx)
	ret
solver_rect.2045:
	movl	$l.4442, %ecx
	movsd	0(%ecx), %xmm0
	movsd	0(%ebx), %xmm1
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	comisd	%xmm1, %xmm0
	jne	je_else.5375
	movl	$0, %eax
	jmp	je_cont.5376
je_else.5375:
	addl	$8, %ebp
	call	o_isinvert.1990
	subl	$8, %ebp
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movl	4(%ebp), %ebx
	movsd	0(%ebx), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5377
	movl	$0, %ecx
	jmp	jbe_cont.5378
jbe_else.5377:
	movl	$1, %ecx
jbe_cont.5378:
	movl	%ecx, %ebx
	addl	$8, %ebp
	call	xor.1977
	subl	$8, %ebp
	cmpl	$0, %eax
	jne	je_else.5379
	movl	0(%ebp), %eax
	addl	$8, %ebp
	call	o_param_a.1994
	subl	$8, %ebp
	xorpd	min_caml_fnegd, %xmm0
	jmp	je_cont.5380
je_else.5379:
	movl	0(%ebp), %eax
	addl	$8, %ebp
	call	o_param_a.1994
	subl	$8, %ebp
je_cont.5380:
	movl	$min_caml_solver_w_vec, %eax
	movsd	0(%eax), %xmm1
	subsd	%xmm1, %xmm0
	movl	4(%ebp), %eax
	movsd	0(%eax), %xmm1
	divsd	%xmm1, %xmm0
	movl	0(%ebp), %ebx
	movsd	%xmm0, 8(%ebp)
	movl	%ebx, %eax
	addl	$16, %ebp
	call	o_param_b.1996
	subl	$16, %ebp
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm1
	movsd	8(%ebp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_solver_w_vec, %ebx
	movsd	8(%ebx), %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm0, 16(%ebp)
	movsd	%xmm1, %xmm0
	addl	$24, %ebp
	call	min_caml_abs_float
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5381
	movl	$0, %eax
	jmp	jbe_cont.5382
jbe_else.5381:
	movl	0(%ebp), %eax
	addl	$24, %ebp
	call	o_param_c.1998
	subl	$24, %ebp
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm1
	movsd	8(%ebp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_solver_w_vec, %ebx
	movsd	16(%ebx), %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm0, 24(%ebp)
	movsd	%xmm1, %xmm0
	addl	$32, %ebp
	call	min_caml_abs_float
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5383
	movl	$0, %eax
	jmp	jbe_cont.5384
jbe_else.5383:
	movl	$min_caml_solver_dist, %eax
	movsd	8(%ebp), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$1, %eax
jbe_cont.5384:
jbe_cont.5382:
je_cont.5376:
	cmpl	$0, %eax
	jne	je_else.5385
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm0
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm1
	comisd	%xmm1, %xmm0
	jne	je_else.5386
	movl	$0, %eax
	jmp	je_cont.5387
je_else.5386:
	movl	0(%ebp), %ebx
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_isinvert.1990
	subl	$32, %ebp
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movl	4(%ebp), %ebx
	movsd	8(%ebx), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5388
	movl	$0, %ecx
	jmp	jbe_cont.5389
jbe_else.5388:
	movl	$1, %ecx
jbe_cont.5389:
	movl	%ecx, %ebx
	addl	$32, %ebp
	call	xor.1977
	subl	$32, %ebp
	cmpl	$0, %eax
	jne	je_else.5390
	movl	0(%ebp), %eax
	addl	$32, %ebp
	call	o_param_b.1996
	subl	$32, %ebp
	xorpd	min_caml_fnegd, %xmm0
	jmp	je_cont.5391
je_else.5390:
	movl	0(%ebp), %eax
	addl	$32, %ebp
	call	o_param_b.1996
	subl	$32, %ebp
je_cont.5391:
	movl	$min_caml_solver_w_vec, %eax
	movsd	8(%eax), %xmm1
	subsd	%xmm1, %xmm0
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm1
	divsd	%xmm1, %xmm0
	movl	0(%ebp), %ebx
	movsd	%xmm0, 32(%ebp)
	movl	%ebx, %eax
	addl	$40, %ebp
	call	o_param_c.1998
	subl	$40, %ebp
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm1
	movsd	32(%ebp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_solver_w_vec, %ebx
	movsd	16(%ebx), %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm0, 40(%ebp)
	movsd	%xmm1, %xmm0
	addl	$48, %ebp
	call	min_caml_abs_float
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5392
	movl	$0, %eax
	jmp	jbe_cont.5393
jbe_else.5392:
	movl	0(%ebp), %eax
	addl	$48, %ebp
	call	o_param_a.1994
	subl	$48, %ebp
	movl	4(%ebp), %eax
	movsd	0(%eax), %xmm1
	movsd	32(%ebp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_solver_w_vec, %ebx
	movsd	0(%ebx), %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm0, 48(%ebp)
	movsd	%xmm1, %xmm0
	addl	$56, %ebp
	call	min_caml_abs_float
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5394
	movl	$0, %eax
	jmp	jbe_cont.5395
jbe_else.5394:
	movl	$min_caml_solver_dist, %eax
	movsd	32(%ebp), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$1, %eax
jbe_cont.5395:
jbe_cont.5393:
je_cont.5387:
	cmpl	$0, %eax
	jne	je_else.5396
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm0
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm1
	comisd	%xmm1, %xmm0
	jne	je_else.5397
	movl	$0, %eax
	jmp	je_cont.5398
je_else.5397:
	movl	0(%ebp), %ebx
	movl	%ebx, %eax
	addl	$56, %ebp
	call	o_isinvert.1990
	subl	$56, %ebp
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movl	4(%ebp), %ebx
	movsd	16(%ebx), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5399
	movl	$0, %ecx
	jmp	jbe_cont.5400
jbe_else.5399:
	movl	$1, %ecx
jbe_cont.5400:
	movl	%ecx, %ebx
	addl	$56, %ebp
	call	xor.1977
	subl	$56, %ebp
	cmpl	$0, %eax
	jne	je_else.5401
	movl	0(%ebp), %eax
	addl	$56, %ebp
	call	o_param_c.1998
	subl	$56, %ebp
	xorpd	min_caml_fnegd, %xmm0
	jmp	je_cont.5402
je_else.5401:
	movl	0(%ebp), %eax
	addl	$56, %ebp
	call	o_param_c.1998
	subl	$56, %ebp
je_cont.5402:
	movl	$min_caml_solver_w_vec, %eax
	movsd	16(%eax), %xmm1
	subsd	%xmm1, %xmm0
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm1
	divsd	%xmm1, %xmm0
	movl	0(%ebp), %ebx
	movsd	%xmm0, 56(%ebp)
	movl	%ebx, %eax
	addl	$64, %ebp
	call	o_param_a.1994
	subl	$64, %ebp
	movl	4(%ebp), %eax
	movsd	0(%eax), %xmm1
	movsd	56(%ebp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_solver_w_vec, %ebx
	movsd	0(%ebx), %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm0, 64(%ebp)
	movsd	%xmm1, %xmm0
	addl	$72, %ebp
	call	min_caml_abs_float
	subl	$72, %ebp
	movsd	64(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5403
	movl	$0, %eax
	jmp	jbe_cont.5404
jbe_else.5403:
	movl	0(%ebp), %eax
	addl	$72, %ebp
	call	o_param_b.1996
	subl	$72, %ebp
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm1
	movsd	56(%ebp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_solver_w_vec, %eax
	movsd	8(%eax), %xmm3
	addsd	%xmm3, %xmm1
	movsd	%xmm0, 72(%ebp)
	movsd	%xmm1, %xmm0
	addl	$80, %ebp
	call	min_caml_abs_float
	subl	$80, %ebp
	movsd	72(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5405
	movl	$0, %eax
	jmp	jbe_cont.5406
jbe_else.5405:
	movl	$min_caml_solver_dist, %eax
	movsd	56(%ebp), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$1, %eax
jbe_cont.5406:
jbe_cont.5404:
je_cont.5398:
	cmpl	$0, %eax
	jne	je_else.5407
	movl	$0, %eax
	ret
je_else.5407:
	movl	$3, %eax
	ret
je_else.5396:
	movl	$2, %eax
	ret
je_else.5385:
	movl	$1, %eax
	ret
solver_surface.2048:
	movsd	0(%ebx), %xmm0
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_param_a.1994
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm0
	movl	0(%ebp), %ebx
	movsd	%xmm1, 16(%ebp)
	movsd	%xmm0, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_param_b.1996
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	16(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm1
	movl	0(%ebp), %eax
	movsd	%xmm0, 32(%ebp)
	movsd	%xmm1, 40(%ebp)
	addl	$48, %ebp
	call	o_param_c.1998
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	32(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5408
	movl	$0, %eax
	ret
jbe_else.5408:
	movl	$min_caml_solver_w_vec, %eax
	movsd	0(%eax), %xmm1
	movl	0(%ebp), %eax
	movsd	%xmm0, 48(%ebp)
	movsd	%xmm1, 56(%ebp)
	addl	$64, %ebp
	call	o_param_a.1994
	subl	$64, %ebp
	movsd	56(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_solver_w_vec, %eax
	movsd	8(%eax), %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm1, 64(%ebp)
	movsd	%xmm0, 72(%ebp)
	addl	$80, %ebp
	call	o_param_b.1996
	subl	$80, %ebp
	movsd	72(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	64(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movl	$min_caml_solver_w_vec, %eax
	movsd	16(%eax), %xmm1
	movl	0(%ebp), %eax
	movsd	%xmm0, 80(%ebp)
	movsd	%xmm1, 88(%ebp)
	addl	$96, %ebp
	call	o_param_c.1998
	subl	$96, %ebp
	movsd	88(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	80(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	48(%ebp), %xmm1
	divsd	%xmm1, %xmm0
	movl	$min_caml_solver_dist, %eax
	xorpd	min_caml_fnegd, %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$1, %eax
	ret
in_prod_sqr_obj.2051:
	movsd	0(%ebx), %xmm0
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	fsqr.1980
	subl	$8, %ebp
	movl	4(%ebp), %eax
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_param_a.1994
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	0(%ebp), %eax
	movsd	8(%eax), %xmm0
	movsd	%xmm1, 16(%ebp)
	addl	$24, %ebp
	call	fsqr.1980
	subl	$24, %ebp
	movl	4(%ebp), %eax
	movsd	%xmm0, 24(%ebp)
	addl	$32, %ebp
	call	o_param_b.1996
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	16(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movl	0(%ebp), %eax
	movsd	16(%eax), %xmm1
	movsd	%xmm0, 32(%ebp)
	movsd	%xmm1, %xmm0
	addl	$40, %ebp
	call	fsqr.1980
	subl	$40, %ebp
	movl	4(%ebp), %eax
	movsd	%xmm0, 40(%ebp)
	addl	$48, %ebp
	call	o_param_c.1998
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	32(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	ret
in_prod_co_objrot.2054:
	movsd	8(%ebx), %xmm0
	movsd	16(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_param_r1.2016
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	0(%eax), %xmm0
	movsd	16(%eax), %xmm2
	mulsd	%xmm2, %xmm0
	movl	0(%ebp), %ebx
	movsd	%xmm1, 16(%ebp)
	movsd	%xmm0, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_param_r2.2018
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	16(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movl	4(%ebp), %eax
	movsd	0(%eax), %xmm1
	movsd	8(%eax), %xmm2
	mulsd	%xmm2, %xmm1
	movl	0(%ebp), %eax
	movsd	%xmm0, 32(%ebp)
	movsd	%xmm1, 40(%ebp)
	addl	$48, %ebp
	call	o_param_r3.2020
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	32(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	ret
solver2nd_mul_b.2057:
	movl	$min_caml_solver_w_vec, %ecx
	movsd	0(%ecx), %xmm0
	movsd	0(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_param_a.1994
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_solver_w_vec, %eax
	movsd	8(%eax), %xmm0
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm2
	mulsd	%xmm2, %xmm0
	movl	0(%ebp), %ebx
	movsd	%xmm1, 16(%ebp)
	movsd	%xmm0, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_param_b.1996
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	16(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movl	$min_caml_solver_w_vec, %eax
	movsd	16(%eax), %xmm1
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm2
	mulsd	%xmm2, %xmm1
	movl	0(%ebp), %eax
	movsd	%xmm0, 32(%ebp)
	movsd	%xmm1, 40(%ebp)
	addl	$48, %ebp
	call	o_param_c.1998
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	32(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	ret
solver2nd_rot_b.2060:
	movl	$min_caml_solver_w_vec, %ecx
	movsd	16(%ecx), %xmm0
	movsd	8(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_solver_w_vec, %ecx
	movsd	8(%ecx), %xmm1
	movsd	16(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_param_r1.2016
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_solver_w_vec, %eax
	movsd	0(%eax), %xmm0
	movl	4(%ebp), %eax
	movsd	16(%eax), %xmm2
	mulsd	%xmm2, %xmm0
	movl	$min_caml_solver_w_vec, %ebx
	movsd	16(%ebx), %xmm2
	movsd	0(%eax), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	movl	0(%ebp), %ebx
	movsd	%xmm1, 16(%ebp)
	movsd	%xmm0, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_param_r2.2018
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	16(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	movl	$min_caml_solver_w_vec, %eax
	movsd	0(%eax), %xmm1
	movl	4(%ebp), %eax
	movsd	8(%eax), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_solver_w_vec, %ebx
	movsd	8(%ebx), %xmm2
	movsd	0(%eax), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movl	0(%ebp), %eax
	movsd	%xmm0, 32(%ebp)
	movsd	%xmm1, 40(%ebp)
	addl	$48, %ebp
	call	o_param_r3.2020
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	32(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	ret
solver_second.2063:
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	in_prod_sqr_obj.2051
	subl	$8, %ebp
	movl	4(%ebp), %eax
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_isrot.1992
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5409
	movsd	8(%ebp), %xmm0
	jmp	je_cont.5410
je_else.5409:
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	addl	$16, %ebp
	call	in_prod_co_objrot.2054
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	addsd	%xmm1, %xmm0
je_cont.5410:
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm0, %xmm1
	jne	je_else.5411
	movl	$0, %eax
	ret
je_else.5411:
	movl	$l.4440, %eax
	movsd	0(%eax), %xmm1
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	movsd	%xmm0, 16(%ebp)
	movsd	%xmm1, 24(%ebp)
	addl	$32, %ebp
	call	solver2nd_mul_b.2057
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	%xmm1, 32(%ebp)
	addl	$40, %ebp
	call	o_isrot.1992
	subl	$40, %ebp
	cmpl	$0, %eax
	jne	je_else.5412
	movsd	32(%ebp), %xmm0
	jmp	je_cont.5413
je_else.5412:
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	addl	$40, %ebp
	call	solver2nd_rot_b.2060
	subl	$40, %ebp
	movsd	32(%ebp), %xmm1
	addsd	%xmm1, %xmm0
je_cont.5413:
	movl	$min_caml_solver_w_vec, %ebx
	movl	4(%ebp), %eax
	movsd	%xmm0, 40(%ebp)
	addl	$48, %ebp
	call	in_prod_sqr_obj.2051
	subl	$48, %ebp
	movl	4(%ebp), %eax
	movsd	%xmm0, 48(%ebp)
	addl	$56, %ebp
	call	o_isrot.1992
	subl	$56, %ebp
	cmpl	$0, %eax
	jne	je_else.5414
	movsd	48(%ebp), %xmm0
	jmp	je_cont.5415
je_else.5414:
	movl	$min_caml_solver_w_vec, %ebx
	movl	4(%ebp), %eax
	addl	$56, %ebp
	call	in_prod_co_objrot.2054
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	addsd	%xmm1, %xmm0
je_cont.5415:
	movl	4(%ebp), %eax
	movsd	%xmm0, 56(%ebp)
	addl	$64, %ebp
	call	o_form.1986
	subl	$64, %ebp
	cmpl	$3, %eax
	jne	je_else.5416
	movl	$l.4444, %eax
	movsd	0(%eax), %xmm0
	movsd	56(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	jmp	je_cont.5417
je_else.5416:
	movsd	56(%ebp), %xmm0
	movsd	%xmm0, %xmm1
je_cont.5417:
	movl	$l.4490, %eax
	movsd	0(%eax), %xmm0
	movsd	16(%ebp), %xmm2
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	40(%ebp), %xmm1
	movsd	%xmm0, 64(%ebp)
	movsd	%xmm1, %xmm0
	addl	$72, %ebp
	call	fsqr.1980
	subl	$72, %ebp
	movsd	64(%ebp), %xmm1
	subsd	%xmm1, %xmm0
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5418
	movl	$0, %eax
	ret
jbe_else.5418:
	addl	$72, %ebp
	call	min_caml_sqrt
	subl	$72, %ebp
	movl	4(%ebp), %eax
	movsd	%xmm0, 72(%ebp)
	addl	$80, %ebp
	call	o_isinvert.1990
	subl	$80, %ebp
	cmpl	$0, %eax
	jne	je_else.5419
	movsd	72(%ebp), %xmm0
	xorpd	min_caml_fnegd, %xmm0
	jmp	je_cont.5420
je_else.5419:
	movsd	72(%ebp), %xmm0
je_cont.5420:
	movl	$min_caml_solver_dist, %eax
	movsd	40(%ebp), %xmm1
	subsd	%xmm1, %xmm0
	movl	$l.4440, %ebx
	movsd	0(%ebx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	16(%ebp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$1, %eax
	ret
solver.2066:
	movl	$min_caml_objects, %edx
	movl	(%edx,%eax,4), %eax
	movl	$min_caml_solver_w_vec, %edx
	movsd	0(%ecx), %xmm0
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%edx, 12(%ebp)
	movsd	%xmm0, 16(%ebp)
	addl	$24, %ebp
	call	o_param_x.2000
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	12(%ebp), %eax
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_solver_w_vec, %eax
	movl	8(%ebp), %ebx
	movsd	8(%ebx), %xmm0
	movl	4(%ebp), %ecx
	movl	%eax, 24(%ebp)
	movsd	%xmm0, 32(%ebp)
	movl	%ecx, %eax
	addl	$40, %ebp
	call	o_param_y.2002
	subl	$40, %ebp
	movsd	32(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	24(%ebp), %eax
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_solver_w_vec, %eax
	movl	8(%ebp), %ebx
	movsd	16(%ebx), %xmm0
	movl	4(%ebp), %ebx
	movl	%eax, 40(%ebp)
	movsd	%xmm0, 48(%ebp)
	movl	%ebx, %eax
	addl	$56, %ebp
	call	o_param_z.2004
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	40(%ebp), %eax
	movsd	%xmm1, 16(%eax)
	movl	4(%ebp), %eax
	addl	$56, %ebp
	call	o_form.1986
	subl	$56, %ebp
	cmpl	$1, %eax
	jne	je_else.5423
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	jmp	solver_rect.2045
je_else.5423:
	cmpl	$2, %eax
	jne	je_else.5424
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	jmp	solver_surface.2048
je_else.5424:
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	jmp	solver_second.2063
is_rect_outside.2070:
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	o_param_a.1994
	subl	$8, %ebp
	movl	$min_caml_isoutside_q, %eax
	movsd	0(%eax), %xmm1
	movsd	%xmm0, 8(%ebp)
	movsd	%xmm1, %xmm0
	addl	$16, %ebp
	call	min_caml_abs_float
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5426
	movl	$0, %eax
	jmp	jbe_cont.5427
jbe_else.5426:
	movl	0(%ebp), %eax
	addl	$16, %ebp
	call	o_param_b.1996
	subl	$16, %ebp
	movl	$min_caml_isoutside_q, %eax
	movsd	8(%eax), %xmm1
	movsd	%xmm0, 16(%ebp)
	movsd	%xmm1, %xmm0
	addl	$24, %ebp
	call	min_caml_abs_float
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5428
	movl	$0, %eax
	jmp	jbe_cont.5429
jbe_else.5428:
	movl	0(%ebp), %eax
	addl	$24, %ebp
	call	o_param_c.1998
	subl	$24, %ebp
	movl	$min_caml_isoutside_q, %eax
	movsd	16(%eax), %xmm1
	movsd	%xmm0, 24(%ebp)
	movsd	%xmm1, %xmm0
	addl	$32, %ebp
	call	min_caml_abs_float
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5430
	movl	$0, %eax
	jmp	jbe_cont.5431
jbe_else.5430:
	movl	$1, %eax
jbe_cont.5431:
jbe_cont.5429:
jbe_cont.5427:
	cmpl	$0, %eax
	jne	je_else.5432
	movl	0(%ebp), %eax
	addl	$32, %ebp
	call	o_isinvert.1990
	subl	$32, %ebp
	cmpl	$0, %eax
	jne	je_else.5433
	movl	$1, %eax
	ret
je_else.5433:
	movl	$0, %eax
	ret
je_else.5432:
	movl	0(%ebp), %eax
	jmp	o_isinvert.1990
is_plane_outside.2072:
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	o_param_a.1994
	subl	$8, %ebp
	movl	$min_caml_isoutside_q, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_param_b.1996
	subl	$16, %ebp
	movl	$min_caml_isoutside_q, %eax
	movsd	8(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	8(%ebp), %xmm1
	addsd	%xmm0, %xmm1
	movl	0(%ebp), %eax
	movsd	%xmm1, 16(%ebp)
	addl	$24, %ebp
	call	o_param_c.1998
	subl	$24, %ebp
	movl	$min_caml_isoutside_q, %eax
	movsd	16(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	16(%ebp), %xmm1
	addsd	%xmm0, %xmm1
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm0
	comisd	%xmm1, %xmm0
	ja	jbe_else.5435
	movl	$0, %eax
	jmp	jbe_cont.5436
jbe_else.5435:
	movl	$1, %eax
jbe_cont.5436:
	movl	0(%ebp), %ebx
	movl	%eax, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_isinvert.1990
	subl	$32, %ebp
	movl	24(%ebp), %ebx
	addl	$32, %ebp
	call	xor.1977
	subl	$32, %ebp
	cmpl	$0, %eax
	jne	je_else.5437
	movl	$1, %eax
	ret
je_else.5437:
	movl	$0, %eax
	ret
is_second_outside.2074:
	movl	$min_caml_isoutside_q, %ebx
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	in_prod_sqr_obj.2051
	subl	$8, %ebp
	movl	0(%ebp), %eax
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_form.1986
	subl	$16, %ebp
	cmpl	$3, %eax
	jne	je_else.5439
	movl	$l.4444, %eax
	movsd	0(%eax), %xmm0
	movsd	8(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	jmp	je_cont.5440
je_else.5439:
	movsd	8(%ebp), %xmm0
	movsd	%xmm0, %xmm1
je_cont.5440:
	movl	0(%ebp), %eax
	movsd	%xmm1, 16(%ebp)
	addl	$24, %ebp
	call	o_isrot.1992
	subl	$24, %ebp
	cmpl	$0, %eax
	jne	je_else.5441
	movsd	16(%ebp), %xmm0
	jmp	je_cont.5442
je_else.5441:
	movl	$min_caml_isoutside_q, %ebx
	movl	0(%ebp), %eax
	addl	$24, %ebp
	call	in_prod_co_objrot.2054
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	addsd	%xmm1, %xmm0
je_cont.5442:
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5443
	movl	$0, %eax
	jmp	jbe_cont.5444
jbe_else.5443:
	movl	$1, %eax
jbe_cont.5444:
	movl	0(%ebp), %ebx
	movl	%eax, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_isinvert.1990
	subl	$32, %ebp
	movl	24(%ebp), %ebx
	addl	$32, %ebp
	call	xor.1977
	subl	$32, %ebp
	cmpl	$0, %eax
	jne	je_else.5445
	movl	$1, %eax
	ret
je_else.5445:
	movl	$0, %eax
	ret
is_outside.2076:
	movl	$min_caml_isoutside_q, %ebx
	movl	$min_caml_chkinside_p, %ecx
	movsd	0(%ecx), %xmm0
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	o_param_x.2000
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_isoutside_q, %eax
	movl	$min_caml_chkinside_p, %ebx
	movsd	8(%ebx), %xmm0
	movl	0(%ebp), %ebx
	movl	%eax, 16(%ebp)
	movsd	%xmm0, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_param_y.2002
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	16(%ebp), %eax
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_isoutside_q, %eax
	movl	$min_caml_chkinside_p, %ebx
	movsd	16(%ebx), %xmm0
	movl	0(%ebp), %ebx
	movl	%eax, 32(%ebp)
	movsd	%xmm0, 40(%ebp)
	movl	%ebx, %eax
	addl	$48, %ebp
	call	o_param_z.2004
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	32(%ebp), %eax
	movsd	%xmm1, 16(%eax)
	movl	0(%ebp), %eax
	addl	$48, %ebp
	call	o_form.1986
	subl	$48, %ebp
	cmpl	$1, %eax
	jne	je_else.5448
	movl	0(%ebp), %eax
	jmp	is_rect_outside.2070
je_else.5448:
	cmpl	$2, %eax
	jne	je_else.5449
	movl	0(%ebp), %eax
	jmp	is_plane_outside.2072
je_else.5449:
	movl	0(%ebp), %eax
	jmp	is_second_outside.2074
check_all_inside.2078:
	movl	(%ebx,%eax,4), %ecx
	cmpl	$-1, %ecx
	jne	je_else.5450
	movl	$1, %eax
	ret
je_else.5450:
	movl	$min_caml_objects, %edx
	movl	(%edx,%ecx,4), %ecx
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	movl	%ecx, %eax
	addl	$8, %ebp
	call	is_outside.2076
	subl	$8, %ebp
	cmpl	$0, %eax
	jne	je_else.5451
	movl	4(%ebp), %eax
	addl	$1, %eax
	movl	0(%ebp), %ebx
	jmp	check_all_inside.2078
je_else.5451:
	movl	$0, %eax
	ret
shadow_check_and_group.2081:
	movl	(%ebx,%eax,4), %edx
	cmpl	$-1, %edx
	jne	je_else.5452
	movl	$0, %eax
	ret
je_else.5452:
	movl	(%ebx,%eax,4), %edx
	movl	$min_caml_light, %esi
	movl	%ecx, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movl	%eax, 8(%ebp)
	movl	%edx, 12(%ebp)
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$16, %ebp
	call	solver.2066
	subl	$16, %ebp
	movl	$min_caml_solver_dist, %ebx
	movsd	0(%ebx), %xmm0
	cmpl	$0, %eax
	jne	je_else.5453
	movl	$0, %eax
	jmp	je_cont.5454
je_else.5453:
	movl	$l.4497, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5455
	movl	$0, %eax
	jmp	jbe_cont.5456
jbe_else.5455:
	movl	$1, %eax
jbe_cont.5456:
je_cont.5454:
	cmpl	$0, %eax
	jne	je_else.5457
	movl	$min_caml_objects, %eax
	movl	12(%ebp), %ebx
	movl	(%eax,%ebx,4), %eax
	addl	$16, %ebp
	call	o_isinvert.1990
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5458
	movl	$0, %eax
	ret
je_else.5458:
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %ecx
	jmp	shadow_check_and_group.2081
je_else.5457:
	movl	$l.4499, %eax
	movsd	0(%eax), %xmm1
	addsd	%xmm1, %xmm0
	movl	$min_caml_chkinside_p, %eax
	movl	$min_caml_light, %ebx
	movsd	0(%ebx), %xmm1
	mulsd	%xmm0, %xmm1
	movl	0(%ebp), %ebx
	movsd	0(%ebx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_chkinside_p, %eax
	movl	$min_caml_light, %ecx
	movsd	8(%ecx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	8(%ebx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_chkinside_p, %eax
	movl	$min_caml_light, %ecx
	movsd	16(%ecx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	16(%ebx), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%eax)
	movl	$0, %eax
	movl	4(%ebp), %ecx
	movl	%ecx, %ebx
	addl	$16, %ebp
	call	check_all_inside.2078
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5459
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %ecx
	jmp	shadow_check_and_group.2081
je_else.5459:
	movl	$1, %eax
	ret
shadow_check_one_or_group.2085:
	movl	(%ebx,%eax,4), %edx
	cmpl	$-1, %edx
	jne	je_else.5460
	movl	$0, %eax
	ret
je_else.5460:
	movl	$min_caml_and_net, %esi
	movl	(%esi,%edx,4), %edx
	movl	$0, %esi
	movl	%ecx, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movl	%eax, 8(%ebp)
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$16, %ebp
	call	shadow_check_and_group.2081
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5461
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %ecx
	jmp	shadow_check_one_or_group.2085
je_else.5461:
	movl	$1, %eax
	ret
shadow_check_one_or_matrix.2089:
	movl	(%ebx,%eax,4), %edx
	movl	0(%edx), %esi
	cmpl	$-1, %esi
	jne	je_else.5462
	movl	$0, %eax
	ret
je_else.5462:
	cmpl	$99, %esi
	jne	je_else.5463
	movl	$1, %esi
	movl	%ecx, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movl	%eax, 8(%ebp)
	movl	%edx, %ebx
	movl	%esi, %eax
	addl	$16, %ebp
	call	shadow_check_one_or_group.2085
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5464
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %ecx
	jmp	shadow_check_one_or_matrix.2089
je_else.5464:
	movl	$1, %eax
	ret
je_else.5463:
	movl	$min_caml_light, %edi
	movl	%edx, 12(%ebp)
	movl	%ecx, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movl	%eax, 8(%ebp)
	movl	%edi, %ebx
	movl	%esi, %eax
	addl	$16, %ebp
	call	solver.2066
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5465
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %ecx
	jmp	shadow_check_one_or_matrix.2089
je_else.5465:
	movl	$l.4501, %eax
	movsd	0(%eax), %xmm0
	movl	$min_caml_solver_dist, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5466
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %ecx
	jmp	shadow_check_one_or_matrix.2089
jbe_else.5466:
	movl	$1, %eax
	movl	12(%ebp), %ebx
	movl	0(%ebp), %ecx
	addl	$16, %ebp
	call	shadow_check_one_or_group.2085
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5467
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %ecx
	jmp	shadow_check_one_or_matrix.2089
je_else.5467:
	movl	$1, %eax
	ret
solve_each_element.2093:
	movl	(%ebx,%eax,4), %ecx
	cmpl	$-1, %ecx
	jne	je_else.5468
	ret
je_else.5468:
	movl	$min_caml_vscan, %edx
	movl	$min_caml_viewpoint, %esi
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movl	%edx, %ebx
	movl	%ecx, %eax
	movl	%esi, %ecx
	addl	$16, %ebp
	call	solver.2066
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5470
	movl	$min_caml_objects, %eax
	movl	8(%ebp), %ebx
	movl	(%eax,%ebx,4), %eax
	addl	$16, %ebp
	call	o_isinvert.1990
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5472
	movl	$min_caml_end_flag, %eax
	movl	$1, %ebx
	movl	%ebx, 0(%eax)
	jmp	je_cont.5473
je_else.5472:
je_cont.5473:
	jmp	je_cont.5471
je_else.5470:
	movl	$min_caml_solver_dist, %ebx
	movsd	0(%ebx), %xmm0
	movl	$l.4501, %ebx
	movsd	0(%ebx), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5474
	jmp	jbe_cont.5475
jbe_else.5474:
	movl	$min_caml_tmin, %ebx
	movsd	0(%ebx), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5476
	jmp	jbe_cont.5477
jbe_else.5476:
	movl	$l.4499, %ebx
	movsd	0(%ebx), %xmm1
	addsd	%xmm1, %xmm0
	movl	$min_caml_chkinside_p, %ebx
	movl	$min_caml_vscan, %ecx
	movsd	0(%ecx), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_viewpoint, %ecx
	movsd	0(%ecx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 0(%ebx)
	movl	$min_caml_chkinside_p, %ebx
	movl	$min_caml_vscan, %ecx
	movsd	8(%ecx), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_viewpoint, %ecx
	movsd	8(%ecx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%ebx)
	movl	$min_caml_chkinside_p, %ebx
	movl	$min_caml_vscan, %ecx
	movsd	16(%ecx), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_viewpoint, %ecx
	movsd	16(%ecx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 16(%ebx)
	movl	$0, %ebx
	movl	4(%ebp), %ecx
	movl	%eax, 12(%ebp)
	movsd	%xmm0, 16(%ebp)
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$24, %ebp
	call	check_all_inside.2078
	subl	$24, %ebp
	cmpl	$0, %eax
	jne	je_else.5478
	jmp	je_cont.5479
je_else.5478:
	movl	$min_caml_tmin, %eax
	movsd	16(%ebp), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_crashed_point, %eax
	movl	$min_caml_chkinside_p, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_crashed_point, %eax
	movl	$min_caml_chkinside_p, %ebx
	movsd	8(%ebx), %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_crashed_point, %eax
	movl	$min_caml_chkinside_p, %ebx
	movsd	16(%ebx), %xmm0
	movsd	%xmm0, 16(%eax)
	movl	$min_caml_intsec_rectside, %eax
	movl	12(%ebp), %ebx
	movl	%ebx, 0(%eax)
	movl	$min_caml_crashed_object, %eax
	movl	8(%ebp), %ebx
	movl	%ebx, 0(%eax)
je_cont.5479:
jbe_cont.5477:
jbe_cont.5475:
je_cont.5471:
	movl	$min_caml_end_flag, %eax
	movl	0(%eax), %eax
	cmpl	$0, %eax
	jne	je_else.5480
	movl	0(%ebp), %eax
	addl	$1, %eax
	movl	4(%ebp), %ebx
	jmp	solve_each_element.2093
je_else.5480:
	ret
solve_one_or_network.2096:
	movl	(%ebx,%eax,4), %ecx
	cmpl	$-1, %ecx
	jne	je_else.5482
	ret
je_else.5482:
	movl	$min_caml_and_net, %edx
	movl	(%edx,%ecx,4), %ecx
	movl	$min_caml_end_flag, %edx
	movl	$0, %esi
	movl	%esi, 0(%edx)
	movl	$0, %edx
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	movl	%ecx, %ebx
	movl	%edx, %eax
	addl	$8, %ebp
	call	solve_each_element.2093
	subl	$8, %ebp
	movl	4(%ebp), %eax
	addl	$1, %eax
	movl	0(%ebp), %ebx
	jmp	solve_one_or_network.2096
trace_or_matrix.2099:
	movl	(%ebx,%eax,4), %ecx
	movl	0(%ecx), %edx
	cmpl	$-1, %edx
	jne	je_else.5484
	ret
je_else.5484:
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	cmpl	$99, %edx
	jne	je_else.5486
	movl	$1, %edx
	movl	%ecx, %ebx
	movl	%edx, %eax
	addl	$8, %ebp
	call	solve_one_or_network.2096
	subl	$8, %ebp
	jmp	je_cont.5487
je_else.5486:
	movl	$min_caml_vscan, %esi
	movl	$min_caml_viewpoint, %edi
	movl	%ecx, 8(%ebp)
	movl	%edi, %ecx
	movl	%esi, %ebx
	movl	%edx, %eax
	addl	$16, %ebp
	call	solver.2066
	subl	$16, %ebp
	cmpl	$0, %eax
	jne	je_else.5488
	jmp	je_cont.5489
je_else.5488:
	movl	$min_caml_solver_dist, %eax
	movsd	0(%eax), %xmm0
	movl	$min_caml_tmin, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5490
	jmp	jbe_cont.5491
jbe_else.5490:
	movl	$1, %eax
	movl	8(%ebp), %ebx
	addl	$16, %ebp
	call	solve_one_or_network.2096
	subl	$16, %ebp
jbe_cont.5491:
je_cont.5489:
je_cont.5487:
	movl	4(%ebp), %eax
	addl	$1, %eax
	movl	0(%ebp), %ebx
	jmp	trace_or_matrix.2099
tracer.2102:
	movl	$min_caml_tmin, %eax
	movl	$l.4505, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$0, %eax
	movl	$min_caml_or_net, %ebx
	movl	0(%ebx), %ebx
	call	trace_or_matrix.2099
	movl	$min_caml_tmin, %eax
	movsd	0(%eax), %xmm0
	movl	$l.4501, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5492
	movl	$0, %eax
	ret
jbe_else.5492:
	movl	$l.4508, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5493
	movl	$0, %eax
	ret
jbe_else.5493:
	movl	$1, %eax
	ret
get_nvector_rect.2105:
	movl	$min_caml_intsec_rectside, %eax
	movl	0(%eax), %eax
	cmpl	$1, %eax
	jne	je_else.5494
	movl	$min_caml_nvector, %eax
	movl	$min_caml_vscan, %ebx
	movsd	0(%ebx), %xmm0
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	sgn.2025
	subl	$8, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_nvector, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_nvector, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 16(%eax)
	ret
je_else.5494:
	cmpl	$2, %eax
	jne	je_else.5496
	movl	$min_caml_nvector, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_nvector, %eax
	movl	$min_caml_vscan, %ebx
	movsd	8(%ebx), %xmm0
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	sgn.2025
	subl	$8, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	4(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_nvector, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 16(%eax)
	ret
je_else.5496:
	cmpl	$3, %eax
	jne	je_else.5498
	movl	$min_caml_nvector, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_nvector, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_nvector, %eax
	movl	$min_caml_vscan, %ebx
	movsd	16(%ebx), %xmm0
	movl	%eax, 8(%ebp)
	addl	$16, %ebp
	call	sgn.2025
	subl	$16, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	8(%ebp), %eax
	movsd	%xmm0, 16(%eax)
	ret
je_else.5498:
	ret
get_nvector_plane.2107:
	movl	$min_caml_nvector, %ebx
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	addl	$8, %ebp
	call	o_param_a.1994
	subl	$8, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	4(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_nvector, %eax
	movl	0(%ebp), %ebx
	movl	%eax, 8(%ebp)
	movl	%ebx, %eax
	addl	$16, %ebp
	call	o_param_b.1996
	subl	$16, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	8(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_nvector, %eax
	movl	0(%ebp), %ebx
	movl	%eax, 12(%ebp)
	movl	%ebx, %eax
	addl	$16, %ebp
	call	o_param_c.1998
	subl	$16, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	12(%ebp), %eax
	movsd	%xmm0, 16(%eax)
	ret
get_nvector_second_norot.2109:
	movl	$min_caml_nvector, %ecx
	movsd	0(%ebx), %xmm0
	movl	%ebx, 0(%ebp)
	movl	%ecx, 4(%ebp)
	movl	%eax, 8(%ebp)
	movsd	%xmm0, 16(%ebp)
	addl	$24, %ebp
	call	o_param_x.2000
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	8(%ebp), %eax
	movsd	%xmm1, 24(%ebp)
	addl	$32, %ebp
	call	o_param_a.1994
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_nvector, %eax
	movl	0(%ebp), %ebx
	movsd	8(%ebx), %xmm0
	movl	8(%ebp), %ecx
	movl	%eax, 32(%ebp)
	movsd	%xmm0, 40(%ebp)
	movl	%ecx, %eax
	addl	$48, %ebp
	call	o_param_y.2002
	subl	$48, %ebp
	movsd	40(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	8(%ebp), %eax
	movsd	%xmm1, 48(%ebp)
	addl	$56, %ebp
	call	o_param_b.1996
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	32(%ebp), %eax
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_nvector, %eax
	movl	0(%ebp), %ebx
	movsd	16(%ebx), %xmm0
	movl	8(%ebp), %ebx
	movl	%eax, 56(%ebp)
	movsd	%xmm0, 64(%ebp)
	movl	%ebx, %eax
	addl	$72, %ebp
	call	o_param_z.2004
	subl	$72, %ebp
	movsd	64(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	8(%ebp), %eax
	movsd	%xmm1, 72(%ebp)
	addl	$80, %ebp
	call	o_param_c.1998
	subl	$80, %ebp
	movsd	72(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	56(%ebp), %eax
	movsd	%xmm1, 16(%eax)
	movl	$min_caml_nvector, %eax
	movl	8(%ebp), %ebx
	movl	%eax, 80(%ebp)
	movl	%ebx, %eax
	addl	$88, %ebp
	call	o_isinvert.1990
	subl	$88, %ebp
	movl	%eax, %ebx
	movl	80(%ebp), %eax
	jmp	normalize_vector.2022
get_nvector_second_rot.2112:
	movl	$min_caml_nvector_w, %ecx
	movsd	0(%ebx), %xmm0
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movl	%ecx, 8(%ebp)
	movsd	%xmm0, 16(%ebp)
	addl	$24, %ebp
	call	o_param_x.2000
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	8(%ebp), %eax
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_nvector_w, %eax
	movl	4(%ebp), %ebx
	movsd	8(%ebx), %xmm0
	movl	0(%ebp), %ecx
	movl	%eax, 24(%ebp)
	movsd	%xmm0, 32(%ebp)
	movl	%ecx, %eax
	addl	$40, %ebp
	call	o_param_y.2002
	subl	$40, %ebp
	movsd	32(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	24(%ebp), %eax
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_nvector_w, %eax
	movl	4(%ebp), %ebx
	movsd	16(%ebx), %xmm0
	movl	0(%ebp), %ebx
	movl	%eax, 40(%ebp)
	movsd	%xmm0, 48(%ebp)
	movl	%ebx, %eax
	addl	$56, %ebp
	call	o_param_z.2004
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	40(%ebp), %eax
	movsd	%xmm1, 16(%eax)
	movl	$min_caml_nvector, %eax
	movl	$min_caml_nvector_w, %ebx
	movsd	0(%ebx), %xmm0
	movl	0(%ebp), %ebx
	movl	%eax, 56(%ebp)
	movsd	%xmm0, 64(%ebp)
	movl	%ebx, %eax
	addl	$72, %ebp
	call	o_param_a.1994
	subl	$72, %ebp
	movsd	64(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_nvector_w, %eax
	movsd	8(%eax), %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm1, 72(%ebp)
	movsd	%xmm0, 80(%ebp)
	addl	$88, %ebp
	call	o_param_r3.2020
	subl	$88, %ebp
	movsd	80(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_nvector_w, %eax
	movsd	16(%eax), %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm1, 88(%ebp)
	movsd	%xmm0, 96(%ebp)
	addl	$104, %ebp
	call	o_param_r2.2018
	subl	$104, %ebp
	movsd	96(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	88(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	addl	$104, %ebp
	call	fhalf.1982
	subl	$104, %ebp
	movsd	72(%ebp), %xmm1
	addsd	%xmm0, %xmm1
	movl	56(%ebp), %eax
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_nvector, %eax
	movl	$min_caml_nvector_w, %ebx
	movsd	8(%ebx), %xmm0
	movl	0(%ebp), %ebx
	movl	%eax, 104(%ebp)
	movsd	%xmm0, 112(%ebp)
	movl	%ebx, %eax
	addl	$120, %ebp
	call	o_param_b.1996
	subl	$120, %ebp
	movsd	112(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_nvector_w, %eax
	movsd	0(%eax), %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm1, 120(%ebp)
	movsd	%xmm0, 128(%ebp)
	addl	$136, %ebp
	call	o_param_r3.2020
	subl	$136, %ebp
	movsd	128(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_nvector_w, %eax
	movsd	16(%eax), %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm1, 136(%ebp)
	movsd	%xmm0, 144(%ebp)
	addl	$152, %ebp
	call	o_param_r1.2016
	subl	$152, %ebp
	movsd	144(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	136(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	addl	$152, %ebp
	call	fhalf.1982
	subl	$152, %ebp
	movsd	120(%ebp), %xmm1
	addsd	%xmm0, %xmm1
	movl	104(%ebp), %eax
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_nvector, %eax
	movl	$min_caml_nvector_w, %ebx
	movsd	16(%ebx), %xmm0
	movl	0(%ebp), %ebx
	movl	%eax, 152(%ebp)
	movsd	%xmm0, 160(%ebp)
	movl	%ebx, %eax
	addl	$168, %ebp
	call	o_param_c.1998
	subl	$168, %ebp
	movsd	160(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_nvector_w, %eax
	movsd	0(%eax), %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm1, 168(%ebp)
	movsd	%xmm0, 176(%ebp)
	addl	$184, %ebp
	call	o_param_r2.2018
	subl	$184, %ebp
	movsd	176(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_nvector_w, %eax
	movsd	8(%eax), %xmm0
	movl	0(%ebp), %eax
	movsd	%xmm1, 184(%ebp)
	movsd	%xmm0, 192(%ebp)
	addl	$200, %ebp
	call	o_param_r1.2016
	subl	$200, %ebp
	movsd	192(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	184(%ebp), %xmm0
	addsd	%xmm1, %xmm0
	addl	$200, %ebp
	call	fhalf.1982
	subl	$200, %ebp
	movsd	168(%ebp), %xmm1
	addsd	%xmm0, %xmm1
	movl	152(%ebp), %eax
	movsd	%xmm1, 16(%eax)
	movl	$min_caml_nvector, %eax
	movl	0(%ebp), %ebx
	movl	%eax, 200(%ebp)
	movl	%ebx, %eax
	addl	$208, %ebp
	call	o_isinvert.1990
	subl	$208, %ebp
	movl	%eax, %ebx
	movl	200(%ebp), %eax
	jmp	normalize_vector.2022
get_nvector.2115:
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	o_form.1986
	subl	$8, %ebp
	cmpl	$1, %eax
	jne	je_else.5511
	jmp	get_nvector_rect.2105
je_else.5511:
	cmpl	$2, %eax
	jne	je_else.5512
	movl	4(%ebp), %eax
	jmp	get_nvector_plane.2107
je_else.5512:
	movl	4(%ebp), %eax
	addl	$8, %ebp
	call	o_isrot.1992
	subl	$8, %ebp
	cmpl	$0, %eax
	jne	je_else.5513
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	jmp	get_nvector_second_norot.2109
je_else.5513:
	movl	4(%ebp), %eax
	movl	0(%ebp), %ebx
	jmp	get_nvector_second_rot.2112
utexture.2118:
	movl	%ebx, 0(%ebp)
	movl	%eax, 4(%ebp)
	addl	$8, %ebp
	call	o_texturetype.1984
	subl	$8, %ebp
	movl	$min_caml_texture_color, %ebx
	movl	4(%ebp), %ecx
	movl	%eax, 8(%ebp)
	movl	%ebx, 12(%ebp)
	movl	%ecx, %eax
	addl	$16, %ebp
	call	o_color_red.2010
	subl	$16, %ebp
	movl	12(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_texture_color, %eax
	movl	4(%ebp), %ebx
	movl	%eax, 16(%ebp)
	movl	%ebx, %eax
	addl	$24, %ebp
	call	o_color_green.2012
	subl	$24, %ebp
	movl	16(%ebp), %eax
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_texture_color, %eax
	movl	4(%ebp), %ebx
	movl	%eax, 20(%ebp)
	movl	%ebx, %eax
	addl	$24, %ebp
	call	o_color_blue.2014
	subl	$24, %ebp
	movl	20(%ebp), %eax
	movsd	%xmm0, 16(%eax)
	movl	8(%ebp), %eax
	cmpl	$1, %eax
	jne	je_else.5514
	movl	0(%ebp), %eax
	movsd	0(%eax), %xmm0
	movl	4(%ebp), %ebx
	movsd	%xmm0, 24(%ebp)
	movl	%ebx, %eax
	addl	$32, %ebp
	call	o_param_x.2000
	subl	$32, %ebp
	movsd	24(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	$l.4547, %eax
	movsd	0(%eax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 32(%ebp)
	addl	$40, %ebp
	call	min_caml_floor
	subl	$40, %ebp
	movl	$l.4549, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$l.4534, %eax
	movsd	0(%eax), %xmm1
	movsd	32(%ebp), %xmm2
	subsd	%xmm0, %xmm2
	comisd	%xmm2, %xmm1
	ja	jbe_else.5515
	movl	$0, %eax
	jmp	jbe_cont.5516
jbe_else.5515:
	movl	$1, %eax
jbe_cont.5516:
	movl	0(%ebp), %ebx
	movsd	16(%ebx), %xmm0
	movl	4(%ebp), %ebx
	movl	%eax, 40(%ebp)
	movsd	%xmm0, 48(%ebp)
	movl	%ebx, %eax
	addl	$56, %ebp
	call	o_param_z.2004
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	$l.4547, %eax
	movsd	0(%eax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 56(%ebp)
	addl	$64, %ebp
	call	min_caml_floor
	subl	$64, %ebp
	movl	$l.4549, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$l.4534, %eax
	movsd	0(%eax), %xmm1
	movsd	56(%ebp), %xmm2
	subsd	%xmm0, %xmm2
	comisd	%xmm2, %xmm1
	ja	jbe_else.5518
	movl	$0, %eax
	jmp	jbe_cont.5519
jbe_else.5518:
	movl	$1, %eax
jbe_cont.5519:
	movl	$min_caml_texture_color, %ebx
	movl	40(%ebp), %ecx
	cmpl	$0, %ecx
	jne	je_else.5520
	cmpl	$0, %eax
	jne	je_else.5522
	movl	$l.4538, %eax
	movsd	0(%eax), %xmm0
	jmp	je_cont.5523
je_else.5522:
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm0
je_cont.5523:
	jmp	je_cont.5521
je_else.5520:
	cmpl	$0, %eax
	jne	je_else.5524
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm0
	jmp	je_cont.5525
je_else.5524:
	movl	$l.4538, %eax
	movsd	0(%eax), %xmm0
je_cont.5525:
je_cont.5521:
	movsd	%xmm0, 8(%ebx)
	ret
je_else.5514:
	cmpl	$2, %eax
	jne	je_else.5527
	movl	0(%ebp), %eax
	movsd	8(%eax), %xmm0
	movl	$l.4542, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	addl	$64, %ebp
	call	min_caml_sin
	subl	$64, %ebp
	addl	$64, %ebp
	call	fsqr.1980
	subl	$64, %ebp
	movl	$min_caml_texture_color, %eax
	movl	$l.4538, %ebx
	movsd	0(%ebx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_texture_color, %eax
	movl	$l.4538, %ebx
	movsd	0(%ebx), %xmm1
	movl	$l.4444, %ebx
	movsd	0(%ebx), %xmm2
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%eax)
	ret
je_else.5527:
	cmpl	$3, %eax
	jne	je_else.5529
	movl	0(%ebp), %eax
	movsd	0(%eax), %xmm0
	movl	4(%ebp), %ebx
	movsd	%xmm0, 64(%ebp)
	movl	%ebx, %eax
	addl	$72, %ebp
	call	o_param_x.2000
	subl	$72, %ebp
	movsd	64(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	0(%ebp), %eax
	movsd	16(%eax), %xmm0
	movl	4(%ebp), %eax
	movsd	%xmm1, 72(%ebp)
	movsd	%xmm0, 80(%ebp)
	addl	$88, %ebp
	call	o_param_z.2004
	subl	$88, %ebp
	movsd	80(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	72(%ebp), %xmm0
	movsd	%xmm1, 88(%ebp)
	addl	$96, %ebp
	call	fsqr.1980
	subl	$96, %ebp
	movsd	88(%ebp), %xmm1
	movsd	%xmm0, 96(%ebp)
	movsd	%xmm1, %xmm0
	addl	$104, %ebp
	call	fsqr.1980
	subl	$104, %ebp
	movsd	96(%ebp), %xmm1
	addsd	%xmm1, %xmm0
	addl	$104, %ebp
	call	min_caml_sqrt
	subl	$104, %ebp
	movl	$l.4534, %eax
	movsd	0(%eax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 104(%ebp)
	addl	$112, %ebp
	call	min_caml_floor
	subl	$112, %ebp
	movsd	104(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	$l.4536, %eax
	movsd	0(%eax), %xmm0
	mulsd	%xmm1, %xmm0
	addl	$112, %ebp
	call	min_caml_cos
	subl	$112, %ebp
	addl	$112, %ebp
	call	fsqr.1980
	subl	$112, %ebp
	movl	$min_caml_texture_color, %eax
	movl	$l.4538, %ebx
	movsd	0(%ebx), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_texture_color, %eax
	movl	$l.4444, %ebx
	movsd	0(%ebx), %xmm1
	subsd	%xmm0, %xmm1
	movl	$l.4538, %ebx
	movsd	0(%ebx), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%eax)
	ret
je_else.5529:
	cmpl	$4, %eax
	jne	je_else.5531
	movl	0(%ebp), %eax
	movsd	0(%eax), %xmm0
	movl	4(%ebp), %ebx
	movsd	%xmm0, 112(%ebp)
	movl	%ebx, %eax
	addl	$120, %ebp
	call	o_param_x.2000
	subl	$120, %ebp
	movsd	112(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	%xmm1, 120(%ebp)
	addl	$128, %ebp
	call	o_param_a.1994
	subl	$128, %ebp
	addl	$128, %ebp
	call	min_caml_sqrt
	subl	$128, %ebp
	movsd	120(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	0(%ebp), %eax
	movsd	16(%eax), %xmm0
	movl	4(%ebp), %ebx
	movsd	%xmm1, 128(%ebp)
	movsd	%xmm0, 136(%ebp)
	movl	%ebx, %eax
	addl	$144, %ebp
	call	o_param_z.2004
	subl	$144, %ebp
	movsd	136(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	%xmm1, 144(%ebp)
	addl	$152, %ebp
	call	o_param_c.1998
	subl	$152, %ebp
	addl	$152, %ebp
	call	min_caml_sqrt
	subl	$152, %ebp
	movsd	144(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	128(%ebp), %xmm0
	movsd	%xmm1, 152(%ebp)
	addl	$160, %ebp
	call	fsqr.1980
	subl	$160, %ebp
	movsd	152(%ebp), %xmm1
	movsd	%xmm0, 160(%ebp)
	movsd	%xmm1, %xmm0
	addl	$168, %ebp
	call	fsqr.1980
	subl	$168, %ebp
	movsd	160(%ebp), %xmm1
	addsd	%xmm1, %xmm0
	addl	$168, %ebp
	call	min_caml_sqrt
	subl	$168, %ebp
	movl	$l.4516, %eax
	movsd	0(%eax), %xmm1
	movsd	128(%ebp), %xmm2
	movsd	%xmm0, 168(%ebp)
	movsd	%xmm1, 176(%ebp)
	movsd	%xmm2, %xmm0
	addl	$184, %ebp
	call	min_caml_abs_float
	subl	$184, %ebp
	movsd	176(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5532
	movsd	128(%ebp), %xmm0
	movsd	152(%ebp), %xmm1
	movsd	%xmm0, 184(%ebp)
	movsd	%xmm1, %xmm0
	divsd	184(%ebp), %xmm0
	addl	$184, %ebp
	call	min_caml_abs_float
	subl	$184, %ebp
	addl	$184, %ebp
	call	min_caml_atan
	subl	$184, %ebp
	movl	$l.4520, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	jmp	jbe_cont.5533
jbe_else.5532:
	movl	$l.4518, %eax
	movsd	0(%eax), %xmm0
jbe_cont.5533:
	movsd	%xmm0, 184(%ebp)
	addl	$192, %ebp
	call	min_caml_floor
	subl	$192, %ebp
	movsd	184(%ebp), %xmm1
	movsd	%xmm0, 192(%ebp)
	movsd	%xmm1, %xmm0
	subsd	192(%ebp), %xmm0
	movl	0(%ebp), %eax
	movsd	8(%eax), %xmm2
	movl	4(%ebp), %eax
	movsd	%xmm0, 192(%ebp)
	movsd	%xmm2, 200(%ebp)
	addl	$208, %ebp
	call	o_param_y.2002
	subl	$208, %ebp
	movsd	200(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	4(%ebp), %eax
	movsd	%xmm1, 208(%ebp)
	addl	$216, %ebp
	call	o_param_b.1996
	subl	$216, %ebp
	addl	$216, %ebp
	call	min_caml_sqrt
	subl	$216, %ebp
	movsd	208(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$l.4516, %eax
	movsd	0(%eax), %xmm0
	movsd	184(%ebp), %xmm2
	movsd	%xmm1, 216(%ebp)
	movsd	%xmm0, 224(%ebp)
	movsd	%xmm2, %xmm0
	addl	$232, %ebp
	call	min_caml_abs_float
	subl	$232, %ebp
	movsd	224(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5534
	movsd	168(%ebp), %xmm0
	movsd	216(%ebp), %xmm1
	movsd	%xmm0, 232(%ebp)
	movsd	%xmm1, %xmm0
	divsd	232(%ebp), %xmm0
	addl	$232, %ebp
	call	min_caml_abs_float
	subl	$232, %ebp
	addl	$232, %ebp
	call	min_caml_atan
	subl	$232, %ebp
	movl	$l.4520, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	jmp	jbe_cont.5535
jbe_else.5534:
	movl	$l.4518, %eax
	movsd	0(%eax), %xmm0
jbe_cont.5535:
	movsd	%xmm0, 232(%ebp)
	addl	$240, %ebp
	call	min_caml_floor
	subl	$240, %ebp
	movsd	232(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	$l.4525, %eax
	movsd	0(%eax), %xmm0
	movl	$l.4527, %eax
	movsd	0(%eax), %xmm2
	movsd	192(%ebp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm1, 240(%ebp)
	movsd	%xmm0, 248(%ebp)
	movsd	%xmm2, %xmm0
	addl	$256, %ebp
	call	fsqr.1980
	subl	$256, %ebp
	movsd	248(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	$l.4527, %eax
	movsd	0(%eax), %xmm0
	movsd	240(%ebp), %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm1, 256(%ebp)
	addl	$264, %ebp
	call	fsqr.1980
	subl	$264, %ebp
	movsd	256(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	$min_caml_texture_color, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	comisd	%xmm0, %xmm1
	ja	jbe_else.5536
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm1
	jmp	jbe_cont.5537
jbe_else.5536:
	movl	$l.4531, %ebx
	movsd	0(%ebx), %xmm0
	mulsd	%xmm0, %xmm1
jbe_cont.5537:
	movsd	%xmm1, 16(%eax)
	ret
je_else.5531:
	ret
in_prod.2121:
	movsd	0(%eax), %xmm0
	movsd	0(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	8(%eax), %xmm1
	movsd	8(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	16(%eax), %xmm1
	movsd	16(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	ret
accumulate_vec_mul.2124:
	movsd	0(%eax), %xmm1
	movsd	0(%ebx), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 0(%eax)
	movsd	8(%eax), %xmm1
	movsd	8(%ebx), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%eax)
	movsd	16(%eax), %xmm1
	movsd	16(%ebx), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%eax)
	ret
raytracing.2128:
	movl	$min_caml_viewpoint, %ebx
	movl	$min_caml_vscan, %ecx
	movsd	%xmm0, 0(%ebp)
	movl	%eax, 8(%ebp)
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$16, %ebp
	call	tracer.2102
	subl	$16, %ebp
	movl	%eax, 12(%ebp)
	cmpl	$0, %eax
	jne	je_else.5541
	movl	8(%ebp), %ebx
	cmpl	$0, %ebx
	jne	je_else.5543
	jmp	je_cont.5544
je_else.5543:
	movl	$min_caml_vscan, %ecx
	movl	$min_caml_light, %edx
	movl	%edx, %ebx
	movl	%ecx, %eax
	addl	$16, %ebp
	call	in_prod.2121
	subl	$16, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5545
	jmp	jbe_cont.5546
jbe_else.5545:
	movsd	%xmm0, 16(%ebp)
	addl	$24, %ebp
	call	fsqr.1980
	subl	$24, %ebp
	movsd	16(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	0(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_beam, %eax
	movsd	0(%eax), %xmm2
	mulsd	%xmm2, %xmm0
	movl	$min_caml_rgb, %eax
	movl	$min_caml_rgb, %ebx
	movsd	0(%ebx), %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 0(%eax)
	movl	$min_caml_rgb, %eax
	movl	$min_caml_rgb, %ebx
	movsd	8(%ebx), %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%eax)
	movl	$min_caml_rgb, %eax
	movl	$min_caml_rgb, %ebx
	movsd	16(%ebx), %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%eax)
jbe_cont.5546:
je_cont.5544:
	jmp	je_cont.5542
je_else.5541:
je_cont.5542:
	movl	12(%ebp), %eax
	cmpl	$0, %eax
	jne	je_else.5547
	ret
je_else.5547:
	movl	$min_caml_objects, %eax
	movl	$min_caml_crashed_object, %ebx
	movl	0(%ebx), %ebx
	movl	(%eax,%ebx,4), %eax
	movl	$min_caml_crashed_point, %ebx
	movl	%eax, 24(%ebp)
	addl	$32, %ebp
	call	get_nvector.2115
	subl	$32, %ebp
	movl	$0, %eax
	movl	$min_caml_or_net, %ebx
	movl	0(%ebx), %ebx
	movl	$min_caml_crashed_point, %ecx
	addl	$32, %ebp
	call	shadow_check_one_or_matrix.2089
	subl	$32, %ebp
	cmpl	$0, %eax
	jne	je_else.5549
	movl	$min_caml_nvector, %eax
	movl	$min_caml_light, %ebx
	addl	$32, %ebp
	call	in_prod.2121
	subl	$32, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5551
	movl	$l.4562, %eax
	movsd	0(%eax), %xmm1
	addsd	%xmm1, %xmm0
	jmp	jbe_cont.5552
jbe_else.5551:
	movl	$l.4562, %eax
	movsd	0(%eax), %xmm0
jbe_cont.5552:
	movsd	0(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	24(%ebp), %eax
	movsd	%xmm0, 32(%ebp)
	addl	$40, %ebp
	call	o_diffuse.2006
	subl	$40, %ebp
	movsd	32(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	jmp	je_cont.5550
je_else.5549:
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
je_cont.5550:
	movl	$min_caml_crashed_point, %ebx
	movl	24(%ebp), %eax
	movsd	%xmm1, 40(%ebp)
	addl	$48, %ebp
	call	utexture.2118
	subl	$48, %ebp
	movl	$min_caml_rgb, %eax
	movl	$min_caml_texture_color, %ebx
	movsd	40(%ebp), %xmm0
	addl	$48, %ebp
	call	accumulate_vec_mul.2124
	subl	$48, %ebp
	movl	8(%ebp), %eax
	cmpl	$4, %eax
	jg	jle_else.5554
	movl	$l.4565, %ebx
	movsd	0(%ebx), %xmm0
	movsd	0(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	ja	jbe_else.5555
	ret
jbe_else.5555:
	movl	$l.4567, %ebx
	movsd	0(%ebx), %xmm0
	movl	$min_caml_vscan, %ebx
	movl	$min_caml_nvector, %ecx
	movsd	%xmm0, 48(%ebp)
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$56, %ebp
	call	in_prod.2121
	subl	$56, %ebp
	movsd	48(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_vscan, %eax
	movl	$min_caml_nvector, %ebx
	addl	$56, %ebp
	call	accumulate_vec_mul.2124
	subl	$56, %ebp
	movl	24(%ebp), %eax
	addl	$56, %ebp
	call	o_reflectiontype.1988
	subl	$56, %ebp
	cmpl	$1, %eax
	jne	je_else.5557
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm0
	movl	24(%ebp), %eax
	movsd	%xmm0, 56(%ebp)
	addl	$64, %ebp
	call	o_hilight.2008
	subl	$64, %ebp
	movsd	56(%ebp), %xmm1
	comisd	%xmm0, %xmm1
	jne	je_else.5558
	ret
je_else.5558:
	movl	$min_caml_vscan, %eax
	movl	$min_caml_light, %ebx
	addl	$64, %ebp
	call	in_prod.2121
	subl	$64, %ebp
	xorpd	min_caml_fnegd, %xmm0
	movl	$l.4442, %eax
	movsd	0(%eax), %xmm1
	comisd	%xmm1, %xmm0
	ja	jbe_else.5560
	ret
jbe_else.5560:
	addl	$64, %ebp
	call	fsqr.1980
	subl	$64, %ebp
	addl	$64, %ebp
	call	fsqr.1980
	subl	$64, %ebp
	movsd	0(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	40(%ebp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	24(%ebp), %eax
	movsd	%xmm0, 64(%ebp)
	addl	$72, %ebp
	call	o_hilight.2008
	subl	$72, %ebp
	movsd	64(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_rgb, %eax
	movl	$min_caml_rgb, %ebx
	movsd	0(%ebx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_rgb, %eax
	movl	$min_caml_rgb, %ebx
	movsd	8(%ebx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_rgb, %eax
	movl	$min_caml_rgb, %ebx
	movsd	16(%ebx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%eax)
	ret
je_else.5557:
	cmpl	$2, %eax
	jne	je_else.5563
	movl	$min_caml_viewpoint, %eax
	movl	$min_caml_crashed_point, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_viewpoint, %eax
	movl	$min_caml_crashed_point, %ebx
	movsd	8(%ebx), %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_viewpoint, %eax
	movl	$min_caml_crashed_point, %ebx
	movsd	16(%ebx), %xmm0
	movsd	%xmm0, 16(%eax)
	movl	$l.4444, %eax
	movsd	0(%eax), %xmm0
	movl	24(%ebp), %eax
	movsd	%xmm0, 72(%ebp)
	addl	$80, %ebp
	call	o_diffuse.2006
	subl	$80, %ebp
	movsd	72(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	0(%ebp), %xmm0
	mulsd	%xmm1, %xmm0
	movl	8(%ebp), %eax
	addl	$1, %eax
	jmp	raytracing.2128
je_else.5563:
	ret
jle_else.5554:
	ret
write_rgb.2131:
	movl	$min_caml_rgb, %eax
	movsd	0(%eax), %xmm0
	call	min_caml_int_of_float
	cmpl	$255, %eax
	jg	jle_else.5566
	jmp	jle_cont.5567
jle_else.5566:
	movl	$255, %eax
jle_cont.5567:
	call	min_caml_print_byte
	movl	$min_caml_rgb, %eax
	movsd	8(%eax), %xmm0
	call	min_caml_int_of_float
	cmpl	$255, %eax
	jg	jle_else.5568
	jmp	jle_cont.5569
jle_else.5568:
	movl	$255, %eax
jle_cont.5569:
	call	min_caml_print_byte
	movl	$min_caml_rgb, %eax
	movsd	16(%eax), %xmm0
	call	min_caml_int_of_float
	cmpl	$255, %eax
	jg	jle_else.5570
	jmp	jle_cont.5571
jle_else.5570:
	movl	$255, %eax
jle_cont.5571:
	jmp	min_caml_print_byte
write_ppm_header.2133:
	movl	$80, %eax
	call	min_caml_print_byte
	movl	$54, %eax
	call	min_caml_print_byte
	movl	$10, %eax
	call	min_caml_print_byte
	movl	$min_caml_size, %eax
	movl	0(%eax), %eax
	call	min_caml_print_int
	movl	$32, %eax
	call	min_caml_print_byte
	movl	$min_caml_size, %eax
	movl	4(%eax), %eax
	call	min_caml_print_int
	movl	$10, %eax
	call	min_caml_print_byte
	movl	$255, %eax
	call	min_caml_print_int
	movl	$10, %eax
	jmp	min_caml_print_byte
scan_point.2135:
	movl	$min_caml_size, %ebx
	movl	0(%ebx), %ebx
	cmpl	%eax, %ebx
	jg	jle_else.5572
	ret
jle_else.5572:
	movl	%eax, 0(%ebp)
	addl	$8, %ebp
	call	min_caml_float_of_int
	subl	$8, %ebp
	movl	$min_caml_scan_offset, %eax
	movsd	0(%eax), %xmm1
	subsd	%xmm1, %xmm0
	movl	$min_caml_scan_d, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_vscan, %eax
	movl	$min_caml_cos_v, %ebx
	movsd	8(%ebx), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_wscan, %ebx
	movsd	0(%ebx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_vscan, %eax
	movl	$min_caml_scan_sscany, %ebx
	movsd	0(%ebx), %xmm1
	movl	$min_caml_cos_v, %ebx
	movsd	0(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_vp, %ebx
	movsd	8(%ebx), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_vscan, %eax
	movsd	%xmm0, %xmm1
	xorpd	min_caml_fnegd, %xmm1
	movl	$min_caml_sin_v, %ebx
	movsd	8(%ebx), %xmm2
	mulsd	%xmm2, %xmm1
	movl	$min_caml_wscan, %ebx
	movsd	16(%ebx), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 16(%eax)
	addl	$8, %ebp
	call	fsqr.1980
	subl	$8, %ebp
	movl	$min_caml_scan_met1, %eax
	movsd	0(%eax), %xmm1
	addsd	%xmm1, %xmm0
	addl	$8, %ebp
	call	min_caml_sqrt
	subl	$8, %ebp
	movl	$min_caml_vscan, %eax
	movl	$min_caml_vscan, %ebx
	movsd	0(%ebx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_vscan, %eax
	movl	$min_caml_vscan, %ebx
	movsd	8(%ebx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%eax)
	movl	$min_caml_vscan, %eax
	movl	$min_caml_vscan, %ebx
	movsd	16(%ebx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%eax)
	movl	$min_caml_viewpoint, %eax
	movl	$min_caml_view, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_viewpoint, %eax
	movl	$min_caml_view, %ebx
	movsd	8(%ebx), %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_viewpoint, %eax
	movl	$min_caml_view, %ebx
	movsd	16(%ebx), %xmm0
	movsd	%xmm0, 16(%eax)
	movl	$min_caml_rgb, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_rgb, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 8(%eax)
	movl	$min_caml_rgb, %eax
	movl	$l.4442, %ebx
	movsd	0(%ebx), %xmm0
	movsd	%xmm0, 16(%eax)
	movl	$0, %eax
	movl	$l.4444, %ebx
	movsd	0(%ebx), %xmm0
	addl	$8, %ebp
	call	raytracing.2128
	subl	$8, %ebp
	addl	$8, %ebp
	call	write_rgb.2131
	subl	$8, %ebp
	movl	0(%ebp), %eax
	addl	$1, %eax
	jmp	scan_point.2135
scan_line.2137:
	movl	$min_caml_size, %ebx
	movl	0(%ebx), %ebx
	cmpl	%eax, %ebx
	jg	jle_else.5574
	ret
jle_else.5574:
	movl	$min_caml_scan_sscany, %ebx
	movl	$min_caml_scan_offset, %ecx
	movsd	0(%ecx), %xmm0
	movl	$l.4444, %ecx
	movsd	0(%ecx), %xmm1
	subsd	%xmm1, %xmm0
	movl	%eax, 0(%ebp)
	movl	%ebx, 4(%ebp)
	movsd	%xmm0, 8(%ebp)
	addl	$16, %ebp
	call	min_caml_float_of_int
	subl	$16, %ebp
	movsd	8(%ebp), %xmm1
	subsd	%xmm0, %xmm1
	movl	$min_caml_scan_d, %eax
	movsd	0(%eax), %xmm0
	mulsd	%xmm1, %xmm0
	movl	4(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_scan_met1, %eax
	movl	$min_caml_scan_sscany, %ebx
	movsd	0(%ebx), %xmm0
	movl	%eax, 16(%ebp)
	addl	$24, %ebp
	call	fsqr.1980
	subl	$24, %ebp
	movl	$l.4577, %eax
	movsd	0(%eax), %xmm1
	addsd	%xmm1, %xmm0
	movl	16(%ebp), %eax
	movsd	%xmm0, 0(%eax)
	movl	$min_caml_scan_sscany, %eax
	movsd	0(%eax), %xmm0
	movl	$min_caml_sin_v, %eax
	movsd	0(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_wscan, %eax
	movl	$min_caml_sin_v, %ebx
	movsd	8(%ebx), %xmm1
	mulsd	%xmm0, %xmm1
	movl	$min_caml_vp, %ebx
	movsd	0(%ebx), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_wscan, %eax
	movl	$min_caml_cos_v, %ebx
	movsd	8(%ebx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	$min_caml_vp, %ebx
	movsd	16(%ebx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%eax)
	movl	$0, %eax
	addl	$24, %ebp
	call	scan_point.2135
	subl	$24, %ebp
	movl	0(%ebp), %eax
	addl	$1, %eax
	jmp	scan_line.2137
scan_start.2139:
	call	write_ppm_header.2133
	movl	$min_caml_size, %eax
	movl	0(%eax), %eax
	call	min_caml_float_of_int
	movl	$min_caml_scan_d, %eax
	movl	$l.4579, %ebx
	movsd	0(%ebx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 0(%eax)
	movl	$min_caml_scan_offset, %eax
	movl	$l.4440, %ebx
	movsd	0(%ebx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%eax)
	movl	$0, %eax
	jmp	scan_line.2137
rt.2141:
	movl	$min_caml_size, %edx
	movl	%eax, 0(%edx)
	movl	$min_caml_size, %eax
	movl	%ebx, 4(%eax)
	movl	$min_caml_dbg, %eax
	movl	%ecx, 0(%eax)
	call	read_parameter.2043
	jmp	scan_start.2139
.globl	min_caml_start
min_caml_start:
.globl	_min_caml_start
_min_caml_start: # for cygwin
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	movl	32(%esp),%ebp
	movl	36(%esp),%eax
	movl	%eax,min_caml_hp
	movl	$768, %eax
	movl	$768, %ebx
	movl	$0, %ecx
	call	rt.2141
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
