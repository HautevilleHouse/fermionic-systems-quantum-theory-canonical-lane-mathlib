import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FermionicSystemsQuantumTheoryCanonicalLaneLean

def bridgeClosed (O : AdmittedObject) : Prop :=
  O.sourceKey = sourceRepository ∧ O.theoremObject = sourceDescription

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A.object := by
  exact A.object.sourceKeyChecked A.object.theoremObjectChecked

end FermionicSystemsQuantumTheoryCanonicalLaneLean
end HautevilleHouse