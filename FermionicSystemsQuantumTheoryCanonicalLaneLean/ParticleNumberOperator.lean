import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure ParticleNumberOperator where
  basisStateCount : Nat
  occupationNumbers : List Nat
  operatorDiagonal : Bool
  diagonalProof : operatorDiagonal

def sourceParticleNumberOperator : ParticleNumberOperator := {
  basisStateCount := 4
  occupationNumbers := [0,1,1,2]
  operatorDiagonal := true
  diagonalProof := rfl
}

def ParticleNumberOperatorClosed (P : ParticleNumberOperator) : Prop :=
  P.operatorDiagonal

theorem source_particle_number_operator_closed :
    ParticleNumberOperatorClosed sourceParticleNumberOperator := by
  exact rfl

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse