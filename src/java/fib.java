public class fib {

    public static void main(String[] args)
    {
        int f = 0;
        int i;

        for (i = 0; i < 1; i++)
        {
            f = fibonacci(45);
        }
        System.out.println(f);
    }

    public static int fibonacci(int n) {
        if (n <= 2)
        {
            return 1;
        }
        else
        {
            return (fibonacci(n - 1) + fibonacci(n - 2));
        }
    }
}
