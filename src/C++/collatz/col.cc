#include <iostream>
using namespace std;

int collatz(int);

int main()
{
    int f = 0;
    int i;
    int j;

    for (j = 0; j < 100; j++)
    {
        for (i = 1; i <= 100000; i++)
        {
            f = f + collatz(i);
        }
    }

    cout << f << endl;

    return 0;
}

int collatz(int n)
{
    int c = 0;

    while (n != 1)
    {
        if (n % 2 == 0)
        {
            n = n / 2;
        }
        else
        {
            n = n * 3 + 1;
        }
        c = c + 1;
    }

    return c;
}
