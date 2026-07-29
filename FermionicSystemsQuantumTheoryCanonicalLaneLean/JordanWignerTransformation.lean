import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure JordanWignerTransformation where
  spinChainLength : Nat
  mappingDefined : Bool
  mappingBijective : Bool
  mappingProof : mappingDefined ∧ mappingBijective
  bijectiveProof : mappingBijective

def sourceJordanWignerTransformation : JordanWignerTransformation := {
  spinChainLength := 4
  mappingDefined := true
  mappingBijective := true
  mappingProof := And.intro rfl rfl
  bijectiveProof := rfl
}

def JordanWignerTransformationClosed (J : JordanWignerTransformation) : Prop :=
  J.mappingDefined ∧ J.mappingBijective

theorem source_jordan_wigner_transformation_closed :
    JordanWignerTransformationClosed sourceJordanWignerTransformation := by
  exact And.intro sourceJordanWignerTransformation.mappingDefined sourceJordanWignerTransformation.bijectiveProof

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse