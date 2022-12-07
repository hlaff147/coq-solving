(** **** The function should return [true] if either or both of its inputs are [false]. *)

Definition nandb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | false => true
  | true => if b2 then false
            else true
  end.

(** **** This function should return [true] when all of its inputs are [true], and [false] otherwise. *)

Definition andb3 (b1:bool) (b2:bool) (b3:bool) : bool :=
  if (b1 && b2 && b3) || (negb b1 && negb b2 && negb b3) then true else false
.