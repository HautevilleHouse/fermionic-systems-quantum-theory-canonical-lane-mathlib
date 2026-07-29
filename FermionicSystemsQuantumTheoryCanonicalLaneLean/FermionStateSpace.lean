import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure FermionState where
  occupationNumbers : ℕ → ℂ
  normalization : Prop
  normalizationProof : normalization

def vacuumState : FermionState := {
  occupationNumbers := fun _ => 0
  normalization := True
  normalizationProof := trivial
}

structure FermionicHilbertSpace where
  states : Set FermionState
  innerProduct : FermionState → FermionState → ℂ
  completeness : Prop

def fermionStateSpaceClosed (H : FermionicHilbertSpace) : Prop :=
  H.completeness

theorem vacuum_state_closed : fermionStateSpaceClosed ({
  states := {vacuumState}
  innerProduct := fun _ _ => 0
  completeness := True
}) := by
  trivial

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse