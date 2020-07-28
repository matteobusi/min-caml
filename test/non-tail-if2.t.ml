let rec f (_ : unit) : int = 12345 in
(let y = (Array.make 10 3) in
    (let x = 67890 in
        (print_int  (if ((y.(0)) = 3) then (((f  ()) + (y.(1))) + x) else 7))))