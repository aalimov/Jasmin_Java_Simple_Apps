	.class public Lab6_Fact
	.super java/lang/Object
   
   ;init
	.method public <init>()V
	  aload_0
	  invokespecial	java/lang/Object/<init>()V
	  return
	.end method
   
   ;main
	.method public static main([Ljava.lang.String;)V
	  .limit stack 2
	  .limit locals 3

	  ;push arr on stack
	    aload_0
	    arraylength
	    ldc 1
	  ;check num of args
	    if_icmpge position_check
	  ;else print msg and quit
	    getstatic  java/lang/System/out Ljava/io/PrintStream;
	    ldc "Integer required: java sumInt <int>"
	    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	    return

	   position_check:
	    aload_0
	    iconst_0
	    aaload
	  ;parseInt to convert input to int
	    invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I
	  
	  ;if < value 1
	    ldc 1
	    if_icmpge parseStore
	  ;else print msg and quit
	    getstatic  java/lang/System/out Ljava/io/PrintStream;
	    ldc "Please enter a positive number"
	    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	    return

	   parseStore:
	  ;push arg to stack parseInt and store
	    aload_0
	    iconst_0
	    aaload
	    invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I
	    istore_0

	    ldc 1
	    istore_1
	    ldc 1
	    istore_2

	  loop:
	    iload 1
	    iload 0

	  ;if condition true then push counter, sum, and mul them. Then store value
	    if_icmpgt fin
	    iload 1
	    iload 2
	    imul   
	    istore_2

	  ;inc counter and goto top of loolp
	    iinc 1 1
	    goto loop

	  fin:
	  ;print sum
	    iload 2
	    getstatic  java/lang/System/out Ljava/io/PrintStream;
	    swap
	    invokevirtual java/io/PrintStream/println(I)V
	    return
    ;===================TEST-CASES-START=========================
    ;aa:Computer_Architecture aalimov$ java Lab6_Fact -1
	;Please enter a positive number
	;
	;aa:Computer_Architecture aalimov$ java Lab6_Fact 0
	;Please enter a positive number
    ;
    ;aa:Computer_Architecture aalimov$ java Lab6_Fact 15
	;2004310016
    ;
    ;aa:Computer_Architecture aalimov$ java Lab6_Fact 3
    ;6
    ;===================TEST-CASES-STOP==========================
	.end method
