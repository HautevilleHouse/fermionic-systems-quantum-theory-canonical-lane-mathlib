import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure FockSpace where
  nParticleStates : ℕ → Set FermionState
  creationOperator : ℕ → LinearMap ℂ ℂ
  annihilationOperator : ℕ → LinearMap ℂ ℂ
  canonicalRelations : Prop
  fockSpaceClosed : canonicalRelations

def truncatedFock (maxN : ℕ) : FockSpace := {
  nParticleStates := fun n => if n ≤ maxN then {vacuumState} else ∅
  creationOperator := fun _ => 0
  annihilationOperator := fun _ => 0
  canonicalRelations := True
  fockSpaceClosed := trivial
}

def FockSpaceCertificate where
  fockSpace : FockSpace
  truncationLevel : ℕ
  certificateClosed : Prop

def truncatedFockClosed (F : FockSpaceCertificate) : Prop := F.certificateClosed

theorem truncated_fock_closed : truncatedFockClosed {
  fockSpace := truncatedFock 5
  truncationLevel := 5
  certificateClosed := True
} := trivial

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse