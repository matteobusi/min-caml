let rec inprod (v1 : [float]) (v2 : [float]) (i : int) : float = (if (not (0 <= i)) then 0.000000 else (((v1.(i)) *. (v2.(i))) +. (inprod  v1 v2 (i - 1)))) in
(let v1 = (Array.make 3 1.230000) in
    (let v2 = (Array.make 3 4.560000) in
        (print_int  (truncate  (1000000.000000 *. (inprod  v1 v2 2))))))