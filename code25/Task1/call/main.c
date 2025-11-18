#include <string.h>
#include <stdint.h>
#include <stdio.h>
extern void f(void);
int main()
{
    f();
    return 0;
}

/*a+b+c+d+e*/
int g(int a, int b, int c, int d)
{
    return a + b + c + d;
}