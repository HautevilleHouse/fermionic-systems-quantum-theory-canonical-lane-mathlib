import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure FermionicState where
  occupationNumbers : List ℕ
  parity : ℕ
  normalization : Prop

definition vacuumState : FermionicState := {
  occupationNumbers := []
  parity := 0
  normalization := True
}

theorem vacuum_state_normalized : vacuumState.normalization := by
  trivial

theorem vacuum_state_parity_even : vacuumState.parity % 2 = 0 := by
  rfl

end HautevilleHouse
end FermionicSystemsQuantumTheoryCanonicalLaneLean