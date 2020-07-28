let rec f (_ : unit) : int = 123 in
(let rec g (_ : unit) : int = 456 in
    (let rec h (_ : unit) : int = 789 in
        (let x = (f  ()) in
            (let y = (g  ()) in
                (print_int  (((if ((h  ()) = 0) then (x + 1) else (y + 2)) + x) + y))))))