#!/usr/bin/perl

sub main
{
    my $f = 0;
    my $i;
    my $j;

    for ($j = 1; $j < 100; $j++)
    {
        for ($i = 1; $i < 113382; $i++)
        {
            $f = $f + collatz($i);
        }
    }

    printf "%d\n", $f;

    exit 0;
}

sub collatz
{
    my $n = shift;
    $c = 0;

    while ($n != 1)
    {
        if ($n % 2 == 0)
        {
            $n = $n / 2;
        }
        else
        {
            $n = $n * 3 + 1;
        }
        $c = $c + 1;
    }
    return $c;
}

&main;