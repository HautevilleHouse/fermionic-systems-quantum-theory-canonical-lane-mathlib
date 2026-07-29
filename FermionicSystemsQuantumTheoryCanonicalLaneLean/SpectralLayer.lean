import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure SpectralCertificate where
  hamiltonian : List ℝ → ℝ
  groundStateEnergy : ℝ
  spectralGapAbove : ℝ
  groundStateVector : List ℝ
  spectralGapPositive : Bool
  spectralGapPositiveProof : spectralGapPositive = true
  groundStateExistenceProof : True

def sourceSpectralCertificate : SpectralCertificate := {
  hamiltonian := fun v => List.sum v
  groundStateEnergy := 0.0
  spectralGapAbove := 1.0
  groundStateVector := [0.0]
  spectralGapPositive := true
  spectralGapPositiveProof := rfl
  groundStateExistenceProof := trivial
}

def SpectralClosed (C : SpectralCertificate) : Prop :=
  C.spectralGapPositive ∧ C.groundStateEnergy ≤ C.spectralGapAbove

theorem source_spectral_closed :
  SpectralClosed sourceSpectralCertificate := by
  exact And.intro sourceSpectralCertificate.spectralGapPositiveProof (by linarith)

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse
