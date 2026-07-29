import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure BarrierEffectiveness where
  barrierType : String
  performanceStandard : ℝ
  testResult : ℝ
  barrierEffective : Prop

structure BarrierEvidence (B : BarrierEffectiveness) where
  barrierEffectiveClosed : B.barrierEffective
  performanceMet : B.testResult ≥ B.performanceStandard

def BarrierClosed (B : BarrierEffectiveness) : Prop :=
  B.barrierEffective ∧ B.testResult ≥ B.performanceStandard

theorem barrier_closed_from_evidence (B : BarrierEffectiveness) (E : BarrierEvidence B) :
    BarrierClosed B := by
  exact And.intro E.barrierEffectiveClosed E.performanceMet

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse