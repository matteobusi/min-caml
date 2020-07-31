type t = (* MinCaml�ι�ʸ��ɽ������ǡ����� (caml2html: syntax_t) *)
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec string_of_type (t : Type.t) =
  let string_of_tuplet ts =
            let tss = List.mapi
                  (fun i t -> if i = 0 then Printf.sprintf "%s" (string_of_type t) else Printf.sprintf " * %s" (string_of_type t))
                  ts in
          if List.length tss = 1 then
            Printf.sprintf "%s" (List.fold_left (fun (a : string) ts -> Printf.sprintf "%s%s" a ts) "" tss)
          else
            Printf.sprintf "(%s)" (List.fold_left (fun (a : string) ts -> Printf.sprintf "%s%s" a ts) "" tss)
  in
  match t with
    | Type.Unit -> Printf.sprintf "unit"
    | Type.Int -> Printf.sprintf "int"
    | Type.Bool -> Printf.sprintf "bool"
    | Type.Float -> Printf.sprintf "float"
    | Type.Array(t) ->
      Printf.sprintf "(%s array)" (string_of_type t)
      (* Printf.sprintf "[%s]" (string_of_type t) *)
    | Type.Tuple(ts) -> string_of_tuplet ts
    | Type.Fun(args, rt) -> Printf.sprintf "%s -> %s" (string_of_tuplet args) (string_of_type rt)
    | Type.Var ({ contents = None }) -> failwith "Error: should never happen"
    | Type.Var ({ contents = Some t }) -> Printf.sprintf "Var %s" (string_of_type t)

let rec string_of_e (e : t) =
  let string_of_tuple ts =
    let tss = List.mapi
      (fun i t -> if i = 0 then Printf.sprintf "%s" (string_of_e t) else Printf.sprintf ", %s" (string_of_e t)) ts in
    Printf.sprintf "(%s)" (List.fold_left (fun (a : string) ts -> Printf.sprintf "%s%s" a ts) "" tss) in
  let string_of_args ts = List.fold_left (fun (a : string) t -> Printf.sprintf "%s %s" a (string_of_e t)) "" ts in
  let string_of_id x = if String.get x 0 = 'T' then "_" else x in
  match e with
    | Unit ->  "()"
    | Bool t -> Printf.sprintf "%b" t
    | Int i -> Printf.sprintf "%d" i
    | Float f -> Printf.sprintf "%f" f
    | Not e1 -> Printf.sprintf "(not %s)" (string_of_e e1)
    | Neg e1 -> Printf.sprintf "(- %s)" (string_of_e e1)
    | Add (e1, e2) -> Printf.sprintf "(%s + %s)" (string_of_e e1) (string_of_e e2)
    | Sub (e1, e2) -> Printf.sprintf "(%s - %s)" (string_of_e e1) (string_of_e e2)
    | FNeg e1 -> Printf.sprintf "(-. %s)" (string_of_e e1)
    | FAdd (e1, e2) -> Printf.sprintf "(%s +. %s)" (string_of_e e1) (string_of_e e2)
    | FSub (e1, e2) -> Printf.sprintf "(%s -. %s)" (string_of_e e1) (string_of_e e2)
    | FMul (e1, e2) -> Printf.sprintf "(%s *. %s)" (string_of_e e1) (string_of_e e2)
    | FDiv (e1, e2) -> Printf.sprintf "(%s /. %s)" (string_of_e e1) (string_of_e e2)
    | Eq (e1, e2) -> Printf.sprintf "(%s = %s)" (string_of_e e1) (string_of_e e2)
    | LE (e1, e2) -> Printf.sprintf "(%s <= %s)" (string_of_e e1) (string_of_e e2)
    | If (e1, e2, e3) -> Printf.sprintf "(if %s then %s else %s)" (string_of_e e1) (string_of_e e2) (string_of_e e3)
    | Let ((x, tx), e2, e3) ->
      Printf.sprintf "(let %s = %s in %s)" (string_of_id x) (string_of_e e2) (string_of_e e3)
    | Var x -> string_of_id x
    | App (e, el) -> Printf.sprintf "(%s %s)" (string_of_e e) (string_of_args el)
    | Tuple el -> Printf.sprintf "%s" (string_of_tuple el)
    | LetTuple (xtl, e1, e2) ->
      let xl = List.map (fun xt -> Var (fst xt)) xtl in
      let tl = List.map snd xtl in
        Printf.sprintf "(let %s = %s in %s)" (string_of_tuple xl) (string_of_e e1) (string_of_e e2)
    | Array (e1, e2) -> Printf.sprintf "(Array.make %s %s)" (string_of_e e1) (string_of_e e2)
    | Get (e1, e2) -> Printf.sprintf "(%s.(%s))" (string_of_e e1) (string_of_e e2)
    | Put (e1, e2, e3) -> Printf.sprintf "(%s.(%s) <- %s)" (string_of_e e1) (string_of_e e2) (string_of_e e3)
    | LetRec ({ name = (f, tf); args = al; body = e1}, e2) ->
      match tf with
        | Type.Fun(fargs, frt) ->
            let sal = List.fold_left (fun a (x, t) -> Printf.sprintf "%s (%s : %s)" a (string_of_id x) (string_of_type t)) "" al in Printf.sprintf "(let rec %s%s : %s = %s in %s)" f sal (string_of_type frt) (string_of_e e1) (string_of_e e2)
        | _ -> failwith "Never happens."
