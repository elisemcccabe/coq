(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *   INRIA, CNRS and contributors - Copyright 1999-2019       *)
(* <O___,, *       (see CREDITS file for the list of authors)           *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

val infer_inductive
  : env_params:Environ.env
  (** Environment containing the polymorphic universes and the
     parameters. *)
  -> Univ.Level.t array
  (** Universes whose cumulativity we want to infer. *)
  -> Entries.one_inductive_entry list
  (** The inductive block data we want to infer cumulativity for.
      NB: we ignore the template bool and the names, only the terms
      are used. *)
  -> Univ.Variance.t array
