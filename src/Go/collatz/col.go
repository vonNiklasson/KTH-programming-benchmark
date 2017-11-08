package main

import (
    "fmt"
)

func main() {
    f := 0

    for j := 0; j < 100; j++ {
        for i := 1; i <= 100000; i++ {
            f = f + collatz(i)
        }
    }

    fmt.Println(f)
}

func collatz(n int) int {
    c := 0

    for n > 1 {
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = 3 * n + 1
        }
        c = c + 1
    }

    return c
}
