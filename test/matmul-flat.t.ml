let rec loop3 (i : int) (k : int) (j : int) (a : [[float]]) (b : [[float]]) (c : [[float]]) : unit = (if (not (0 <= k)) then () else (let _ = ((c.(i)).(j) <- (((c.(i)).(j)) +. (((a.(i)).(k)) *. ((b.(k)).(j))))) in
        (loop3  i (k - 1) j a b c))) in
(let rec loop2 (i : int) (m : int) (j : int) (a : [[float]]) (b : [[float]]) (c : [[float]]) : unit = (if (not (0 <= j)) then () else (let _ = (loop3  i (m - 1) j a b c) in
            (loop2  i m (j - 1) a b c))) in
    (let rec loop1 (i : int) (m : int) (n : int) (a : [[float]]) (b : [[float]]) (c : [[float]]) : unit = (if (not (0 <= i)) then () else (let _ = (loop2  i m (n - 1) a b c) in
                (loop1  (i - 1) m n a b c))) in
        (let rec mul (l : int) (m : int) (n : int) (a : [[float]]) (b : [[float]]) (c : [[float]]) : unit = (loop1  (l - 1) m n a b c) in
            (let dummy = (Array.make 0 0.000000) in
                (let rec init (i : int) (n : int) (mat : [[float]]) : unit = (if (not (0 <= i)) then () else (let _ = (mat.(i) <- (Array.make n 0.000000)) in
                            (init  (i - 1) n mat))) in
                    (let rec make (m : int) (n : int) (dummy : [float]) : [[float]] = (let mat = (Array.make m dummy) in
                            (let _ = (init  (m - 1) n mat) in
                                mat)) in
                        (let a = (make  2 3 dummy) in
                            (let b = (make  3 2 dummy) in
                                (let c = (make  2 2 dummy) in
                                    (let _ = ((a.(0)).(0) <- 1.000000) in
                                        (let _ = ((a.(0)).(1) <- 2.000000) in
                                            (let _ = ((a.(0)).(2) <- 3.000000) in
                                                (let _ = ((a.(1)).(0) <- 4.000000) in
                                                    (let _ = ((a.(1)).(1) <- 5.000000) in
                                                        (let _ = ((a.(1)).(2) <- 6.000000) in
                                                            (let _ = ((b.(0)).(0) <- 7.000000) in
                                                                (let _ = ((b.(0)).(1) <- 8.000000) in
                                                                    (let _ = ((b.(1)).(0) <- 9.000000) in
                                                                        (let _ = ((b.(1)).(1) <- 10.000000) in
                                                                            (let _ = ((b.(2)).(0) <- 11.000000) in
                                                                                (let _ = ((b.(2)).(1) <- 12.000000) in
                                                                                    (let _ = (mul  2 3 2 a b c) in
                                                                                        (let _ = (print_int  (truncate  ((c.(0)).(0)))) in
                                                                                            (let _ = (print_newline  ()) in
                                                                                                (let _ = (print_int  (truncate  ((c.(0)).(1)))) in
                                                                                                    (let _ = (print_newline  ()) in
                                                                                                        (let _ = (print_int  (truncate  ((c.(1)).(0)))) in
                                                                                                            (let _ = (print_newline  ()) in
                                                                                                                (let _ = (print_int  (truncate  ((c.(1)).(1)))) in
                                                                                                                    (print_newline  ()))))))))))))))))))))))))))))))