#include<stdio.h>

extern int fib(int n);

int
main(void)
{
    int n = 6;
    printf("fib(%d):%d\n", n, fib(n));
    return 0;
}
