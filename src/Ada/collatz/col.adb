with Gnat.Io; use Gnat.Io;
procedure col is
    function collatz(n1: Integer) return Integer is
        c: Integer;
        n: Integer;
    begin
        n := n1;
        c := 0;

        while n /= 1 loop
            if n mod 2 = 0 then
                n := n / 2;
            else
                n := n * 3 + 1;
            end if;
            c := c + 1;
        end loop;

        return c;
    end;

   f: Integer;
begin
    f := 0;

    for j in Integer range 1 .. 100 loop
        for i in Integer range 1 .. 100000 loop
            f := f + collatz(i);
        end loop;
    end loop;

    Put(f);
    New_Line;
end col;
