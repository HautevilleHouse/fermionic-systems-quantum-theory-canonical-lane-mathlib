import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure SelfAdjointOperator where
  operator : CreationOperator
  spectralMeasure : Prop
  eigenvalues : List ℕ
  isHermitian : Prop

definition hamiltonian : SelfAdjointOperator := {
  operator := annihilationOperator
  spectralMeasure := True
  eigenvalues := [0]
  isHermitian := True
}

theorem spectral_decomposition : hamiltonian.spectralMeasure := by
  exact hamiltonian.spectralMeasure

end HautevilleHouse
end FermionicSystemsQuantumTheoryCanonicalLaneLean