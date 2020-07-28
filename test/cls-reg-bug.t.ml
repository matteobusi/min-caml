let rec h (p : (int * int * int * int * int * int * int * int * int * int)) : int = (let (v1, v2, v3, v4, v5, v6, v7, v8, v9, v10) = p in (let rec g (z : int) : int = (let r = (((((((((v1 + v2) + v3) + v4) + v5) + v6) + v7) + v8) + v9) + v10) in
            (if (not (z <= 0)) then r else (g  (- z)))) in
        (g  1))) in
(let _ = (print_int  (h  (1, 2, 3, 4, 5, 6, 7, 8, 9, 10))) in
    (print_newline  ()))