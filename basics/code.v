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


(** **** Exercise: 1 star, standard (factorial) 

    Recall the standard mathematical factorial function:

       factorial(0)  =  1
       factorial(n)  =  n * factorial(n-1)     (if n>0)

    Translate this into Coq. *)

Fixpoint factorial (n:nat) : nat :=
  match n with
    | O => 1
    | S n' => mult n (factorial n')
  end.


(** **** Exercise: 1 star, standard (ltb) 

    The [ltb] function tests natural numbers for [l]ess-[t]han,
    yielding a [b]oolean.  Instead of making up a new [Fixpoint] for
    this one, define it in terms of a previously defined
    function.  (It can be done with just one previously defined
    function, but you can use two if you want.) *)

Definition blt_nat (n m : nat) : bool :=
  negb (leb m n).
