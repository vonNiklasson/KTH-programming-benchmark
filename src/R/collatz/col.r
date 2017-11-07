collatz <- function(n)
{
    c <- 0
    while (n != 1)
    {
        if (n %% 2 == 0)
        {
            n = n / 2
        }
        else
        {
            n = n * 3 + 1
        }
        c  = c + 1
    }
    return(c)
}

main <- function()
{
    f <- 0

    for (j in 0:100)
    {
        for (i in 1:100000)
        {
            f = f + collatz(i)
        }
    }

    print(f)
}

main()
