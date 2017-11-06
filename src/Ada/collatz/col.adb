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
   f := collatz(8);
   Put(f);
   New_Line;
end col;
