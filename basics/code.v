(** **** The function should return [true] if either or both of its inputs are [false]. *)
(* 1: *)
Definition nandb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | false => true
  | true => negb b2
  end.

(* 2: *)
Definition nandb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | false => true
  | true => if b2 then false
            else true
  end.
(** **** This function should return [true] when all of its inputs are [true], and [false] otherwise. *)
(* 1: *)
Definition andb3 (b1:bool) (b2:bool) (b3:bool) : bool :=
  match b1 with
  | true => b2 && b3
  | false => false
  end.
(* 2: *)
Definition andb3 (b1:bool) (b2:bool) (b3:bool) : bool :=
  if (b1 && b2 && b3) then true else false
.