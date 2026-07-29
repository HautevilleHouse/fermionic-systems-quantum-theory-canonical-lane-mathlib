import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure FermionicFockSpace where
  particleCount : Nat
  modeCount : Nat
  dimension : Nat
  dimensionCorrect : dimension = 2^(modeCount : Nat)
  slaterDeterminantBasis : Bool
  basisClosed : slaterDeterminantBasis

def sourceFermionicFockSpace : FermionicFockSpace := {
  particleCount := 2
  modeCount := 3
  dimension := 8
  dimensionCorrect := rfl
  slaterDeterminantBasis := true
  basisClosed := rfl
}

def FermionicFockSpaceClosed (F : FermionicFockSpace) : Prop :=
  F.dimensionCorrect ∧ F.slaterDeterminantBasis

theorem source_fermionic_fock_space_closed :
    FermionicFockSpaceClosed sourceFermionicFockSpace := by
  exact And.intro sourceFermionicFockSpace.dimensionCorrect sourceFermionicFockSpace.basisClosed

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse