        EXPORT f
        PRESERVE8
        AREA f,CODE,READONLY
        ENTRY                        
        IMPORT g                 ; 声明g为外部引用符号
        PUSH   {lr}
        MOVS   r0, #2            ; i=2
        ADDS   r1, r0, r0        ; (R1)=i*2
        ADDS   r2, r1, r0        ; (R2)=i*3
        ADDS   r3, r1, r1        ; (R3)=i*4
        BL     g                 ; 调用C函数g()，返回值在R0中
        POP    {pc}