; class structure
	.class public Lab3_Average5
	.super java/lang/Object

	; init
	.method public <init>()V
	  aload_0
	  invokespecial java/lang/Object/<init>()V
	  return
	.end method


	.method public static main([Ljava.lang.String;)V
	  .limit stack 20
	  .limit locals 10

	  ldc 25
	  ldc 18
	  iadd
	  ldc 5
	  iadd
	  ldc 8
	  iadd
	  ldc 22
	  iadd
	  i2f
	  ldc 5.0
	  fdiv

	  getstatic  java/lang/System/out Ljava/io/PrintStream;

	  swap

	  invokevirtual java/io/PrintStream/println(F)V

	  return
	.end method
