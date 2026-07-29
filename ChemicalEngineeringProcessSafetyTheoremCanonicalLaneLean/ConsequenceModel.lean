import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ConsequenceModel where
  releaseScenario : String
  affectedRadius : ℝ
  lethalityFraction : ℝ
  damageProbit : ℝ → ℝ
  consequenceValid : Prop

structure ConsequenceEvidence (C : ConsequenceModel) where
  consequenceValidClosed : C.consequenceValid
  radiusPositive : C.affectedRadius > 0

def ConsequenceClosed (C : ConsequenceModel) : Prop :=
  C.consequenceValid ∧ C.affectedRadius > 0

theorem consequence_closed_from_evidence (C : ConsequenceModel) (E : ConsequenceEvidence C) :
    ConsequenceClosed C := by
  exact And.intro E.consequenceValidClosed E.radiusPositive

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse