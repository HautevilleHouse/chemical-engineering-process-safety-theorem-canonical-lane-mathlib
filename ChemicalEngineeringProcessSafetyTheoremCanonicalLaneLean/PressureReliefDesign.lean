import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure PressureReliefDesign where
  setPressure : ℝ
  relievingCapacity : ℝ
  maxAllowablePressure : ℝ
  reliefArea : ℝ
  designValid : Prop

structure PressureReliefEvidence (P : PressureReliefDesign) where
  designValidClosed : P.designValid
  capacityAdequate : P.relievingCapacity ≥ P.maxAllowablePressure

def PressureReliefClosed (P : PressureReliefDesign) : Prop :=
  P.designValid ∧ P.relievingCapacity ≥ P.maxAllowablePressure

theorem pressure_relief_closed_from_evidence (P : PressureReliefDesign) (E : PressureReliefEvidence P) :
    PressureReliefClosed P := by
  exact And.intro E.designValidClosed E.capacityAdequate

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse