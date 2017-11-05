#!/usr/bin/perl

sub main
{
    my $f;
    my $f2;
    for (my $i=0; $i < 1000000; $i++)
    {
        $f2 = fibonacci2(46);
    }
    printf "%d\n", $f;
    printf "%d\n", $f2;

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

sub fibonacci2
{
    my $n = shift;
    my $n1 = 1;
    my $n2 = 1;
    my $n3 = 0;
    for (my $i = 2; $i < $n; $i++) {
        $n3 = $n1 + $n2;
        $n1 = $n2;
        $n2 = $n3;
    }
    return $n3;
}
