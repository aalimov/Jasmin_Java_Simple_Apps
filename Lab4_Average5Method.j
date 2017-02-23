	.class public Lab4_Average5Method
	.super java/lang/Object

	.method public <init>()V
	  aload_0
	  invokespecial java/lang/Object/<init>()V
	  return
	.end method

      ; set up main
	.method public static main([Ljava.lang.String;)V
	  .limit stack 20
	  .limit locals 10

      ; init object
	  new Lab4_Average5Method
	  dup
	  invokespecial Lab4_Average5Method/<init>()V

      ;load in values to be summed and averaged
	  ldc 10
	  ldc 5
	  ldc 1
	  ldc 7
	  ldc 3

	  ; call avg5
	  invokevirtual Lab4_Average5Method.average5(IIIII)F

	  ; put Sys.out on our stack
	  getstatic  java/lang/System/out Ljava/io/PrintStream;

	  ; move print to top of stack
	  swap

	  ; print result
	  invokevirtual java/io/PrintStream/println(F)V

	  return
	.end method


	; avg5() - takes 5 ints and outputs double
	.method public average5(IIIII)F
	  .limit stack 20
	  .limit locals 10

      ; loads integer arguements to be summed
      ; and converted to float, then divided by float (5.0)
	  iload 1
	  iload 2
	  iadd
	  iload 3
	  iadd
	  iload 4
	  iadd
	  iload 5
	  iadd
	  i2f
	  ldc 5.0
	  fdiv

	  freturn
	.end method
