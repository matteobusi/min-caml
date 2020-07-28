(let x = (truncate  1.230000) in
(let y = (truncate  4.560000) in
    (let z = (truncate  (-. 7.890000)) in
        (print_int  (((if (not (0 <= z)) then y else x) + (if (not (x <= 0)) then z else y)) + (if (not (0 <= y)) then x else z))))))