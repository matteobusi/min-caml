let rec f (x : int) : int = (x + 123) in
(let rec g (y : int) : int -> int = f in
    (print_int  ((g  456)  789)))