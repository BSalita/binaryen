	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/921113-1.c"
	.section	.text.w,"ax",@progbits
	.hidden	w
	.globl	w
	.type	w,@function
w:                                      # @w
	.param  	f32, f32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	return  	$2
	.endfunc
.Lfunc_end0:
	.size	w, .Lfunc_end0-w

	.section	.text.f1,"ax",@progbits
	.hidden	f1
	.globl	f1
	.type	f1,@function
f1:                                     # @f1
	.param  	f32, f32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	block
	f32.const	$push2=, 0x0p0
	f32.ne  	$push0=, $0, $pop2
	br_if   	0, $pop0        # 0: down to label0
# BB#1:                                 # %entry
	f32.const	$push3=, 0x0p0
	f32.ne  	$push1=, $1, $pop3
	br_if   	0, $pop1        # 0: down to label0
# BB#2:                                 # %if.end
	return  	$2
.LBB1_3:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	f1, .Lfunc_end1-f1

	.section	.text.f2,"ax",@progbits
	.hidden	f2
	.globl	f2
	.type	f2,@function
f2:                                     # @f2
	.param  	f32, f32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	block
	f32.const	$push2=, 0x1p0
	f32.ne  	$push0=, $0, $pop2
	br_if   	0, $pop0        # 0: down to label1
# BB#1:                                 # %entry
	f32.const	$push3=, 0x1p0
	f32.ne  	$push1=, $1, $pop3
	br_if   	0, $pop1        # 0: down to label1
# BB#2:                                 # %if.end
	return  	$2
.LBB2_3:                                # %if.then
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end2:
	.size	f2, .Lfunc_end2-f2

	.section	.text.gitter,"ax",@progbits
	.hidden	gitter
	.globl	gitter
	.type	gitter,@function
gitter:                                 # @gitter
	.param  	i32, i32, i32, i32, i32, f32
	.result 	i32
	.local  	f32, f64, f64
# BB#0:                                 # %entry
	block
	f32.load	$push1=, 0($4)
	f32.const	$push23=, 0x0p0
	f32.ne  	$push2=, $pop1, $pop23
	br_if   	0, $pop2        # 0: down to label2
# BB#1:                                 # %entry
	f32.load	$push0=, 4($4)
	f32.const	$push24=, 0x0p0
	f32.ne  	$push3=, $pop0, $pop24
	br_if   	0, $pop3        # 0: down to label2
# BB#2:                                 # %f1.exit
	f32.load	$push5=, 8($4)
	f32.const	$push25=, 0x1p0
	f32.ne  	$push8=, $pop5, $pop25
	br_if   	0, $pop8        # 0: down to label2
# BB#3:                                 # %f1.exit
	i32.const	$push6=, 12
	i32.add 	$push7=, $4, $pop6
	f32.load	$push4=, 0($pop7)
	f32.const	$push26=, 0x1p0
	f32.ne  	$push9=, $pop4, $pop26
	br_if   	0, $pop9        # 0: down to label2
# BB#4:                                 # %f2.exit
	f32.load	$6=, 0($1)
	i32.const	$push10=, 0
	i32.store	$discard=, 0($3), $pop10
	block
	f32.const	$push11=, 0x0p0
	f32.gt  	$push12=, $6, $pop11
	f32.ne  	$push13=, $6, $6
	i32.or  	$push14=, $pop12, $pop13
	br_if   	0, $pop14       # 0: down to label3
# BB#5:                                 # %if.then
	f64.promote/f32	$push30=, $6
	tee_local	$push29=, $8=, $pop30
	f64.promote/f32	$push15=, $5
	f64.const	$push16=, 0x1p-1
	f64.mul 	$push28=, $pop15, $pop16
	tee_local	$push27=, $7=, $pop28
	f64.gt  	$push17=, $pop29, $pop27
	f64.ne  	$push19=, $8, $8
	f64.ne  	$push18=, $7, $7
	i32.or  	$push20=, $pop19, $pop18
	i32.or  	$push21=, $pop17, $pop20
	br_if   	0, $pop21       # 0: down to label3
# BB#6:                                 # %if.then15
	i32.const	$push22=, 1065353216
	i32.store	$discard=, 0($2), $pop22
.LBB3_7:                                # %if.end18
	end_block                       # label3:
	return  	$4
.LBB3_8:                                # %if.then.i32
	end_block                       # label2:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end3:
	.size	gitter, .Lfunc_end3-gitter

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push1=, pos
	i32.const	$push7=, __stack_pointer
	i32.const	$push4=, __stack_pointer
	i32.load	$push5=, 0($pop4)
	i32.const	$push6=, 16
	i32.sub 	$push12=, $pop5, $pop6
	i32.store	$push14=, 0($pop7), $pop12
	tee_local	$push13=, $0=, $pop14
	i32.const	$push8=, 8
	i32.add 	$push9=, $pop13, $pop8
	i32.const	$push10=, 12
	i32.add 	$push11=, $0, $pop10
	i32.const	$push0=, limit
	f32.const	$push2=, 0x1p0
	i32.call	$discard=, gitter@FUNCTION, $0, $pop1, $pop9, $pop11, $pop0, $pop2
	i32.const	$push3=, 0
	call    	exit@FUNCTION, $pop3
	unreachable
	.endfunc
.Lfunc_end4:
	.size	main, .Lfunc_end4-main

	.hidden	pos                     # @pos
	.type	pos,@object
	.section	.bss.pos,"aw",@nobits
	.globl	pos
	.p2align	2
pos:
	.skip	8
	.size	pos, 8

	.hidden	limit                   # @limit
	.type	limit,@object
	.section	.data.limit,"aw",@progbits
	.globl	limit
	.p2align	4
limit:
	.skip	8
	.int32	1065353216              # float 1
	.int32	1065353216              # float 1
	.size	limit, 16


	.ident	"clang version 3.9.0 "
