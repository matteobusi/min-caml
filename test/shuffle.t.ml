let rec foo (a : int) (b : int) (c : int) (d : int) (e : int) (f : int) : unit = (let _ = (print_int  a) in
    (let _ = (print_int  b) in
        (let _ = (print_int  c) in
            (let _ = (print_int  d) in
                (let _ = (print_int  e) in
                    (print_int  f)))))) in
(let rec bar (a : int) (b : int) (c : int) (d : int) (e : int) (f : int) : unit = (foo  b a d e f c) in
    (bar  1 2 3 4 5 6))