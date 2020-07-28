(let x = 42 in
(let rec f (y1 : int) (y2 : int) (y3 : int) (y4 : int) (y5 : int) : unit = (print_int  (((((x + y1) + y2) + y3) + y4) + y5)) in
    (f  1 2 3 4 5)))