#!/usr/bin/perl

sub main
{
    my $f;
    for (my $i=0; $i < 1; $i++)
    {
        $f = fibonacci(45);
    }
    printf "%d\n", $f;

    exit 0;
}

# Except for the first line declaring the subroutine, and the different way that
# parameters passed to the subroutine are passed, this is identical to the PHP version

sub fibonacci
{
    my $n = shift;
    if ($n <= 2)
    {
        return 1;
    }
    else
    {
        return (fibonacci($n - 1) + fibonacci($n - 2));
    }
}

&main;
