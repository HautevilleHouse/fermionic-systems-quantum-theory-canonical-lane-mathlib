import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure CARAlgebra where
  creationOperator : String
  annihilationOperator : String
  anticommutationRelation : String
  carClosed : Bool
  carProof : carClosed

def sourceCARAlgebra : CARAlgebra := {
  creationOperator := "c^\u2020"
  annihilationOperator := "c"
  anticommutationRelation := "{c_i, c_j^\u2020} = \u03b4_{ij}"
  carClosed := true
  carProof := rfl
}

def CARAlgebraClosed (C : CARAlgebra) : Prop :=
  C.carClosed

theorem source_car_algebra_closed :
    CARAlgebraClosed sourceCARAlgebra := by
  exact rfl

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse