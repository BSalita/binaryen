	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr34768-2.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	i32.const	$push5=, 0
	i32.const	$push4=, 0
	i32.load	$push1=, x($pop4)
	i32.sub 	$push2=, $pop5, $pop1
	i32.store	$discard=, x($pop0), $pop2
	i32.const	$push3=, 0
	return  	$pop3
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	return  	$pop0
	.endfunc
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar

	.section	.text.test,"ax",@progbits
	.hidden	test
	.globl	test
	.type	test,@function
test:                                   # @test
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	i32.load	$push1=, x($pop0)
	i32.const	$push3=, foo@FUNCTION
	i32.const	$push2=, bar@FUNCTION
	i32.select	$push4=, $pop3, $pop2, $0
	i32.call_indirect	$push5=, $pop4
	i32.add 	$push7=, $pop1, $pop5
	i32.const	$push9=, 0
	i32.load	$push6=, x($pop9)
	i32.add 	$push8=, $pop7, $pop6
	return  	$pop8
	.endfunc
.Lfunc_end2:
	.size	test, .Lfunc_end2-test

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	block
	i32.const	$push3=, 0
	i32.const	$push1=, 1
	i32.store	$push0=, x($pop3), $pop1
	i32.call	$push2=, test@FUNCTION, $pop0
	br_if   	0, $pop2        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push4=, 0
	return  	$pop4
.LBB3_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end3:
	.size	main, .Lfunc_end3-main

	.hidden	x                       # @x
	.type	x,@object
	.section	.bss.x,"aw",@nobits
	.globl	x
	.p2align	2
x:
	.int32	0                       # 0x0
	.size	x, 4


	.ident	"clang version 3.9.0 "
