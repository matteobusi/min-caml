let rec f (_ : unit) : int = 123 in
(let rec g (_ : unit) : int = 456 in
    (let rec h (_ : unit) : int = 789 in
        (let x = (f  ()) in
            (print_int  ((if (x <= 0) then (g  ()) else (h  ())) + x)))))