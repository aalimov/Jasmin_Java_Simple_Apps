	.class public Lab5_AverageLoop
	.super java/lang/Object
	
	; init
	.method public <init>()V
	  aload_0
	  invokespecial java/lang/Object/<init>()V
	  return
	.end method
	
	.method public static main([Ljava.lang.String;)V
	  .limit stack 2
	  .limit locals 4
	
	  ;local1 acting as counter
	  ldc 0
	  istore 1
	
	  ;local3  acting as arr len
	  aload_0
	  arraylength
	  ldc 1
	  isub   
	  istore 2
	
	  ;local3 acting as current total
	  ldc 0
	  istore 3
	
	while:
	  iload 2     ;arr len
	  iload 1     ;counter
	  if_icmplt done
	
	  aload_0
	  iload 1
	  aaload
	
	  invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I
	
	  iload 3
	  iadd
	  istore 3 ;update local3
	
	  ; counter increment
	  iload 1
	  ldc 1
	  iadd 
	  istore 1
	
	  ;jmp to while
	  goto while
	
	done:
	
	  iload 3
	  i2f
	  iload 1
	  i2f
	  fdiv
	
	  ; print avg
	  getstatic  java/lang/System/out Ljava/io/PrintStream;
	  swap
	  invokevirtual java/io/PrintStream/println(F)V
	
	  return

	  ;==================================TEST-CASES-START=====================================
	  ;java Lab5_AverageLoop 2 2 2 4
	  ;2.5
	  ;java Lab5_AverageLoop 2 2 2 4 6 5 4 3
	  ;3.5
	  ;java Lab5_AverageLoop 2 2 2 4 6 5 4 3 11 -2
	  ;3.7
	  ;java Lab5_AverageLoop 2 2 2 4 6 5 4 3 11 -200
	  ;-16.1
	  ;java Lab5_AverageLoop 2 2 2 4 6 5 4 3 11 -2 0
	  ;3.3636363
	  ;=================================TEST-CASES-STOP======================================
	.end method

