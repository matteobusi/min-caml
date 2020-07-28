let rec getx (v : (float * float * float)) : float = (let (x, y, z) = v in x) in
(let rec gety (v : (float * float * float)) : float = (let (x, y, z) = v in y) in
    (let rec getz (v : (float * float * float)) : float = (let (x, y, z) = v in z) in
        (let rec inprod (v1 : (float * float * float)) (v2 : (float * float * float)) : float = ((((getx  v1) *. (getx  v2)) +. ((gety  v1) *. (gety  v2))) +. ((getz  v1) *. (getz  v2))) in
            (print_int  (truncate  (1000000.000000 *. (inprod  (1.000000, 2.000000, 3.000000) (4.000000, 5.000000, 6.000000))))))))