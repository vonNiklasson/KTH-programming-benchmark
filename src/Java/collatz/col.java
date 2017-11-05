public class col
{
    public static void main(String[] args)
    {
        int f = 0;
        int i;
        int j;

        for (j = 0; j < 100; j++)
        {
            for (i = 1; i < 113382; i++)
            {
                f = f + collatz(i);
            }
        }

        System.out.println(f);
    }

    public static int collatz(int n)
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
}
