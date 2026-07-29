import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure FermiLiquidParameters where
  fillingFraction : ℝ
  effectiveMass : ℝ
  landauParameter : ℝ → ℝ

def landauStabilityCondition (p : FermiLiquidParameters) : Prop :=
  ∀ l : ℕ, p.landauParameter l > -1

structure FermiLiquidCertificate where
  parameters : FermiLiquidParameters
  stabilityClosed : landauStabilityCondition parameters
  stabilityProof : stabilityClosed

def defaultFermiLiquid : FermiLiquidCertificate := {
  parameters := {
    fillingFraction := 0.5
    effectiveMass := 1.0
    landauParameter := fun _ => 0
  }
  stabilityClosed := by
    intro l
    simp
  stabilityProof := fun l => by
    simp
}

def fermiLiquidClosed (C : FermiLiquidCertificate) : Prop := C.stabilityClosed

theorem fermi_liquid_closed : fermiLiquidClosed defaultFermiLiquid := by
  exact defaultFermiLiquid.stabilityProof

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse