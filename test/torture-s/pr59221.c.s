	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr59221.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	block
	i32.const	$push14=, 0
	i32.load	$push2=, b($pop14)
	i32.const	$push24=, 0
	i32.eq  	$push25=, $pop2, $pop24
	br_if   	0, $pop25       # 0: down to label0
# BB#1:                                 # %for.inc.preheader
	i32.const	$push16=, 0
	i32.const	$push15=, 0
	i32.store	$discard=, b($pop16), $pop15
.LBB0_2:                                # %for.end
	end_block                       # label0:
	block
	i32.const	$push23=, 0
	i32.const	$push22=, 0
	i32.const	$push21=, 0
	i32.load	$push20=, a($pop21)
	tee_local	$push19=, $0=, $pop20
	i32.const	$push3=, 16
	i32.shl 	$push4=, $pop19, $pop3
	i32.const	$push18=, 16
	i32.shr_s	$push5=, $pop4, $pop18
	i32.const	$push8=, -32768
	i32.const	$push6=, 65535
	i32.and 	$push7=, $0, $pop6
	i32.select	$push9=, $pop5, $pop8, $pop7
	i32.store16	$push0=, e($pop22), $pop9
	i32.store	$push1=, d($pop23), $pop0
	i32.const	$push17=, 65535
	i32.and 	$push10=, $pop1, $pop17
	i32.const	$push11=, 1
	i32.ne  	$push12=, $pop10, $pop11
	br_if   	0, $pop12       # 0: down to label1
# BB#3:                                 # %if.end
	i32.const	$push13=, 0
	return  	$pop13
.LBB0_4:                                # %if.then
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	a                       # @a
	.type	a,@object
	.section	.data.a,"aw",@progbits
	.globl	a
	.p2align	2
a:
	.int32	1                       # 0x1
	.size	a, 4

	.hidden	b                       # @b
	.type	b,@object
	.section	.bss.b,"aw",@nobits
	.globl	b
	.p2align	2
b:
	.int32	0                       # 0x0
	.size	b, 4

	.hidden	e                       # @e
	.type	e,@object
	.section	.bss.e,"aw",@nobits
	.globl	e
	.p2align	1
e:
	.int16	0                       # 0x0
	.size	e, 2

	.hidden	d                       # @d
	.type	d,@object
	.section	.bss.d,"aw",@nobits
	.globl	d
	.p2align	2
d:
	.int32	0                       # 0x0
	.size	d, 4


	.ident	"clang version 3.9.0 "
