import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ThermalRunawayCriteria where
  heatGenerationRate : ℝ → ℝ
  heatRemovalRate : ℝ → ℝ
  criticalTemperature : ℝ
  stabilityMargin : ℝ
  criteriaSatisfied : Prop

structure ThermalRunawayEvidence (T : ThermalRunawayCriteria) where
  criteriaSatisfiedClosed : T.criteriaSatisfied
  stabilityMarginNonnegative : T.stabilityMargin ≥ 0

def ThermalRunawayClosed (T : ThermalRunawayCriteria) : Prop :=
  T.criteriaSatisfied ∧ T.stabilityMargin ≥ 0

theorem thermal_runaway_closed_from_evidence (T : ThermalRunawayCriteria) (E : ThermalRunawayEvidence T) :
    ThermalRunawayClosed T := by
  exact And.intro E.criteriaSatisfiedClosed E.stabilityMarginNonnegative

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse