            AREA SCopy, CODE, READONLY
            EXPORT  strcopy
strcopy
            LDRB     r2,     [r1]    ; r1对应源字符串首地址，利用寄存器间接寻址读取字符
            ADDS     r1,     #1
            STRB     r2,     [r0]    ; r0对应目的字符串首地址，利用寄存器间接寻址保存字符
            ADDS     r0,     #1
            CMP      r2,     #0      ; 判断字符串是否结束
            BNE      strcopy         ; 循环执行字符复制，直到字符串结束
            BX       lr              ; 汇编子程序返回
            END