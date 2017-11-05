#!/usr/bin/perl

sub main {
    my $f = collatz(123201);
    printf "%d\n", $f;

    exit 0;
}

# Except for the first line declaring the subroutine, and the different way that
# parameters passed to the subroutine are passed, this is identical to the PHP version

sub collatz {
    my $n = shift;
    if ($n == 0)
    {
        return 0;
    }
    elsif ($n % 2 == 0)
    {
        return collatz(%n / 2);
    }
    else
    {
        return collatz(%n * 3 + 1);
    }
}

&main;
