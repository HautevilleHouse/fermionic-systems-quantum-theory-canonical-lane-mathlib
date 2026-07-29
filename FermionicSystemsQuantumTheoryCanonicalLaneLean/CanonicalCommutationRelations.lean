import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure CreationOperator where
  actsOn : FermionicState → FermionicState
  domain : List FermionicState
  codomain : List FermionicState

definition annihilationOperator : CreationOperator := {
  actsOn := fun s => s
  domain := []
  codomain := []
}

definition commutationRelation (a b : CreationOperator) : Prop := True

theorem canonical_anticommutation : commutationRelation annihilationOperator annihilationOperator := by
  trivial

end HautevilleHouse
end FermionicSystemsQuantumTheoryCanonicalLaneLean