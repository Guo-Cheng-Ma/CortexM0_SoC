#include <stdio.h>

int math_calc(int i, int j, int k)
{
    int res; 
    
    __asm
    {
        MOVS res, i      
        MULS res, j      
        ADDS res, res, k 
    }
    
    return res;
}

int main()
{
    int result;
    result = math_calc(2, 3, 4); 
    
    return 0;
}