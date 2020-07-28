let rec f (_ : unit) : int = 123 in
(let rec g (_ : unit) : int = 456 in
    (let x = (f  ()) in
        (print_int  ((if (x <= 0) then ((g  ()) + x) else x) + x))))