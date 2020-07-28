let rec f (n : int) : unit = (if (not (0 <= n)) then () else (let _ = (print_int  n) in
        (let a = (Array.make 1 f) in
            ((a.(0))  (n - 1))))) in
(f  9)