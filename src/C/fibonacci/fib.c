#include<stdio.h>


int fibonacci(int);

int main()
{
    int f = 0;
    int i;

    for (i = 0; i < 1; i++)
    {
        f = fibonacci(45);
    }
    printf("%d\n", f);

    return 0;
}

int fibonacci(int n)
{
    if ( n <= 2 )
    {
        return 1;
    }
    else
    {
        return (fibonacci(n - 1) + fibonacci(n - 2));
    }
}
