	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/strcpy-1.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
.LBB0_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
                                        #         Child Loop BB0_4 Depth 4
                                        #         Child Loop BB0_8 Depth 4
                                        #         Child Loop BB0_12 Depth 4
	block
	block
	loop                            # label2:
	i32.const	$push49=, u1
	i32.add 	$1=, $0, $pop49
	i32.const	$2=, 0
.LBB0_2:                                # %for.cond4.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
                                        #         Child Loop BB0_4 Depth 4
                                        #         Child Loop BB0_8 Depth 4
                                        #         Child Loop BB0_12 Depth 4
	loop                            # label4:
	i32.const	$push51=, u2
	i32.add 	$3=, $2, $pop51
	i32.const	$push50=, 65
	i32.add 	$4=, $2, $pop50
	i32.const	$5=, 1
.LBB0_3:                                # %for.cond7.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_4 Depth 4
                                        #         Child Loop BB0_8 Depth 4
                                        #         Child Loop BB0_12 Depth 4
	loop                            # label6:
	i32.const	$push54=, u1
	i32.const	$push53=, 97
	i32.const	$push52=, 97
	i32.call	$discard=, memset@FUNCTION, $pop54, $pop53, $pop52
	i32.const	$6=, 65
	i32.const	$8=, -97
.LBB0_4:                                # %for.body9
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        #       Parent Loop BB0_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	loop                            # label8:
	i32.const	$push60=, 65
	i32.const	$push59=, 24
	i32.shl 	$push1=, $6, $pop59
	i32.const	$push58=, 24
	i32.shr_s	$push2=, $pop1, $pop58
	i32.const	$push57=, 95
	i32.gt_s	$push3=, $pop2, $pop57
	i32.select	$push4=, $pop60, $6, $pop3
	i32.store8	$push0=, u2+97($8), $pop4
	i32.const	$push56=, 1
	i32.add 	$6=, $pop0, $pop56
	i32.const	$push55=, 1
	i32.add 	$8=, $8, $pop55
	br_if   	0, $8           # 0: up to label8
# BB#5:                                 # %for.end
                                        #   in Loop: Header=BB0_3 Depth=3
	end_loop                        # label9:
	i32.add 	$push5=, $5, $2
	i32.const	$push61=, 0
	i32.store8	$discard=, u2($pop5), $pop61
	i32.call	$push6=, strcpy@FUNCTION, $1, $3
	i32.ne  	$push7=, $pop6, $1
	br_if   	6, $pop7        # 6: down to label1
# BB#6:                                 # %for.cond21.preheader
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$7=, u1
	block
	i32.const	$push62=, 1
	i32.lt_s	$push8=, $0, $pop62
	br_if   	0, $pop8        # 0: down to label10
# BB#7:                                 # %for.body24.preheader
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$8=, 0
.LBB0_8:                                # %for.body24
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        #       Parent Loop BB0_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	loop                            # label11:
	copy_local	$push65=, $8
	tee_local	$push64=, $6=, $pop65
	i32.load8_u	$push9=, u1($pop64)
	i32.const	$push63=, 97
	i32.ne  	$push10=, $pop9, $pop63
	br_if   	9, $pop10       # 9: down to label1
# BB#9:                                 # %for.inc30
                                        #   in Loop: Header=BB0_8 Depth=4
	i32.const	$push68=, 1
	i32.add 	$push67=, $6, $pop68
	tee_local	$push66=, $8=, $pop67
	i32.lt_s	$push11=, $pop66, $0
	br_if   	0, $pop11       # 0: up to label11
# BB#10:                                #   in Loop: Header=BB0_3 Depth=3
	end_loop                        # label12:
	i32.const	$push69=, u1+1
	i32.add 	$7=, $6, $pop69
.LBB0_11:                               # %for.body38.preheader
                                        #   in Loop: Header=BB0_3 Depth=3
	end_block                       # label10:
	i32.const	$8=, 0
	copy_local	$6=, $4
.LBB0_12:                               # %for.body38
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        #       Parent Loop BB0_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	loop                            # label13:
	i32.add 	$push16=, $7, $8
	i32.load8_u	$push17=, 0($pop16)
	i32.const	$push76=, 65
	i32.const	$push75=, 24
	i32.shl 	$push12=, $6, $pop75
	i32.const	$push74=, 24
	i32.shr_s	$push13=, $pop12, $pop74
	i32.const	$push73=, 95
	i32.gt_s	$push14=, $pop13, $pop73
	i32.select	$push72=, $pop76, $6, $pop14
	tee_local	$push71=, $6=, $pop72
	i32.const	$push70=, 255
	i32.and 	$push15=, $pop71, $pop70
	i32.ne  	$push18=, $pop17, $pop15
	br_if   	8, $pop18       # 8: down to label1
# BB#13:                                # %for.inc50
                                        #   in Loop: Header=BB0_12 Depth=4
	i32.const	$push78=, 1
	i32.add 	$8=, $8, $pop78
	i32.const	$push77=, 1
	i32.add 	$6=, $6, $pop77
	i32.lt_s	$push19=, $8, $5
	br_if   	0, $pop19       # 0: up to label13
# BB#14:                                # %for.end54
                                        #   in Loop: Header=BB0_3 Depth=3
	end_loop                        # label14:
	i32.add 	$push80=, $7, $8
	tee_local	$push79=, $8=, $pop80
	i32.load8_u	$push20=, 0($pop79)
	br_if   	6, $pop20       # 6: down to label1
# BB#15:                                # %for.cond61.preheader
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push82=, 1
	i32.add 	$push21=, $8, $pop82
	i32.load8_u	$push22=, 0($pop21)
	i32.const	$push81=, 97
	i32.ne  	$push23=, $pop22, $pop81
	br_if   	7, $pop23       # 7: down to label0
# BB#16:                                # %for.cond61
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push84=, 2
	i32.add 	$push24=, $8, $pop84
	i32.load8_u	$push25=, 0($pop24)
	i32.const	$push83=, 97
	i32.ne  	$push26=, $pop25, $pop83
	br_if   	7, $pop26       # 7: down to label0
# BB#17:                                # %for.cond61.1
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push86=, 3
	i32.add 	$push27=, $8, $pop86
	i32.load8_u	$push28=, 0($pop27)
	i32.const	$push85=, 97
	i32.ne  	$push29=, $pop28, $pop85
	br_if   	7, $pop29       # 7: down to label0
# BB#18:                                # %for.cond61.2
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push88=, 4
	i32.add 	$push30=, $8, $pop88
	i32.load8_u	$push31=, 0($pop30)
	i32.const	$push87=, 97
	i32.ne  	$push32=, $pop31, $pop87
	br_if   	7, $pop32       # 7: down to label0
# BB#19:                                # %for.cond61.3
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push90=, 5
	i32.add 	$push33=, $8, $pop90
	i32.load8_u	$push34=, 0($pop33)
	i32.const	$push89=, 97
	i32.ne  	$push35=, $pop34, $pop89
	br_if   	7, $pop35       # 7: down to label0
# BB#20:                                # %for.cond61.4
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push92=, 6
	i32.add 	$push36=, $8, $pop92
	i32.load8_u	$push37=, 0($pop36)
	i32.const	$push91=, 97
	i32.ne  	$push38=, $pop37, $pop91
	br_if   	7, $pop38       # 7: down to label0
# BB#21:                                # %for.cond61.5
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push94=, 7
	i32.add 	$push39=, $8, $pop94
	i32.load8_u	$push40=, 0($pop39)
	i32.const	$push93=, 97
	i32.ne  	$push41=, $pop40, $pop93
	br_if   	7, $pop41       # 7: down to label0
# BB#22:                                # %for.cond61.6
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push96=, 8
	i32.add 	$push42=, $8, $pop96
	i32.load8_u	$push43=, 0($pop42)
	i32.const	$push95=, 97
	i32.ne  	$push44=, $pop43, $pop95
	br_if   	7, $pop44       # 7: down to label0
# BB#23:                                # %for.cond61.7
                                        #   in Loop: Header=BB0_3 Depth=3
	i32.const	$push98=, 1
	i32.add 	$5=, $5, $pop98
	i32.const	$push97=, 80
	i32.lt_u	$push45=, $5, $pop97
	br_if   	0, $pop45       # 0: up to label6
# BB#24:                                # %for.inc77
                                        #   in Loop: Header=BB0_2 Depth=2
	end_loop                        # label7:
	i32.const	$push100=, 1
	i32.add 	$2=, $2, $pop100
	i32.const	$push99=, 8
	i32.lt_u	$push46=, $2, $pop99
	br_if   	0, $pop46       # 0: up to label4
# BB#25:                                # %for.inc80
                                        #   in Loop: Header=BB0_1 Depth=1
	end_loop                        # label5:
	i32.const	$push102=, 1
	i32.add 	$0=, $0, $pop102
	i32.const	$push101=, 8
	i32.lt_u	$push47=, $0, $pop101
	br_if   	0, $pop47       # 0: up to label2
# BB#26:                                # %for.end82
	end_loop                        # label3:
	i32.const	$push48=, 0
	call    	exit@FUNCTION, $pop48
	unreachable
.LBB0_27:                               # %if.then59
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
.LBB0_28:                               # %if.then68
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	u1,@object              # @u1
	.lcomm	u1,112,4
	.type	u2,@object              # @u2
	.lcomm	u2,112,4

	.ident	"clang version 3.9.0 "
