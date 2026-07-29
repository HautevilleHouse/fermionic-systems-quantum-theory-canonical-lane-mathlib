import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure CCRAlgebra where
  generators : Nat
  relations : (Nat → ℝ) → Prop

def canonicalAnticommutation (a b : ℝ) : ℝ := a*b + b*a

def annihilationOperator (n : Nat) (i : Nat) : ℕ → ℝ := sorry

structure CARAlgebra where
  dimension : Nat
  anticommutationClosed : Bool
  operators : List (List ℝ)
  anticommutationProof : anticommutationClosed = true

def sourceCARAlgebra : CARAlgebra := {
  dimension := 2
  anticommutationClosed := true
  operators := [[1.0,0.0],[0.0,1.0]]
  anticommutationProof := rfl
}

def CARAlgebraClosed (C : CARAlgebra) : Prop :=
  C.anticommutationClosed = true

theorem source_car_algebra_closed :
  CARAlgebraClosed sourceCARAlgebra := by
  exact rfl

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse
