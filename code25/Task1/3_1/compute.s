    AREA    MyTask1, CODE, READONLY             

    EXPORT  main            
    EXPORT  __user_initial_stackheap

main                            
    LDR     R0, =2023310103 
    LDR     R1, =8       
    LDR     R3, =45    

    MULS    R0, R1, R0      

    ADDS    R0, R0, R3      

    MOV     R3, R0          

Stop
    B       Stop            
    
    ALIGN

__user_initial_stackheap
    BX      LR              

    END