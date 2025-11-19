#include <string.h>
#include <stdint.h>
#include <stdio.h>

extern void strcopy(char *d, const char *s);

int main()
{
    char srcstr[] = "2023310103008";         /* 定义源字符串数组并初始化 */
    char dststr[] = "Second string - destination";  /* 定义目的字符串数组并初始化 */
    strcopy(dststr,srcstr);                         /* 调用字符串复制汇编函数 */
    return 0;
}