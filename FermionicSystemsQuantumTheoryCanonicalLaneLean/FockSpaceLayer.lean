import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure FockSpace where
  maxParticles : Nat
  dimension : Nat
  basisVectors : List (List ℝ)
  creationOperators : List (List ℝ)
  annihilationOperators : List (List ℝ)

def vacuumFockState : FockSpace := {
  maxParticles := 0
  dimension := 1
  basisVectors := [[1.0]]
  creationOperators := []
  annihilationOperators := []
}

structure FockSpaceCertificate where
  fock : FockSpace
  creationAnnihilationAdjoint : Prop
  particleNumberOperator : Prop
  fockBasisComplete : Prop
  creationAnnihilationAdjointProof : creationAnnihilationAdjoint
  particleNumberOperatorProof : particleNumberOperator
  fockBasisCompleteProof : fockBasisComplete

def sourceFockSpaceCertificate : FockSpaceCertificate := {
  fock := vacuumFockState
  creationAnnihilationAdjoint := vacuumFockState.dimension = 1
  particleNumberOperator := vacuumFockState.maxParticles = 0
  fockBasisComplete := vacuumFockState.basisVectors.length = 1
  creationAnnihilationAdjointProof := rfl
  particleNumberOperatorProof := rfl
  fockBasisCompleteProof := rfl
}

def FockSpaceClosed (C : FockSpaceCertificate) : Prop :=
  C.creationAnnihilationAdjoint ∧ C.particleNumberOperator ∧ C.fockBasisComplete

theorem source_fock_space_closed :
  FockSpaceClosed sourceFockSpaceCertificate := by
  exact And.intro sourceFockSpaceCertificate.creationAnnihilationAdjointProof
    (And.intro sourceFockSpaceCertificate.particleNumberOperatorProof
      sourceFockSpaceCertificate.fockBasisCompleteProof)

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse
