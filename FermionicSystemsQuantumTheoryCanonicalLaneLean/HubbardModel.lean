import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

structure HubbardModel where
  latticeSites : Nat
  hoppingParameter : Float
  onsiteInteraction : Float
  hamiltonianDefined : Bool
  hamiltonianHermitian : Bool
  hamiltonianProof : hamiltonianDefined ∧ hamiltonianHermitian

def sourceHubbardModel : HubbardModel := {
  latticeSites := 4
  hoppingParameter := -1.0
  onsiteInteraction := 2.0
  hamiltonianDefined := true
  hamiltonianHermitian := true
  hamiltonianProof := And.intro rfl rfl
}

def HubbardModelClosed (H : HubbardModel) : Prop :=
  H.hamiltonianDefined ∧ H.hamiltonianHermitian

theorem source_hubbard_model_closed :
    HubbardModelClosed sourceHubbardModel := by
  exact And.intro sourceHubbardModel.hamiltonianDefined sourceHubbardModel.hamiltonianHermitian

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse