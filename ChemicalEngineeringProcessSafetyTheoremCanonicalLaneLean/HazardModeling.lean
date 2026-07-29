import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure HazardScenario where
  scenarioId : String
  processUnit : String
  substance : String
  operatingConditions : Prop
  deviation : Prop
  consequence : Prop
  likelihood : Prop
  riskLevel : Prop

structure HazardScenarioEvidence (H : HazardScenario) where
  operatingConditionsClosed : H.operatingConditions
  deviationClosed : H.deviation
  consequenceClosed : H.consequence
  likelihoodClosed : H.likelihood
  riskLevelClosed : H.riskLevel

def HazardScenarioClosed (H : HazardScenario) : Prop :=
  H.operatingConditions ∧ H.deviation ∧ H.consequence ∧ H.likelihood ∧ H.riskLevel

theorem hazard_scenario_closed_from_evidence (H : HazardScenario) (E : HazardScenarioEvidence H) :
    HazardScenarioClosed H := by
  exact And.intro E.operatingConditionsClosed
    (And.intro E.deviationClosed
      (And.intro E.consequenceClosed
        (And.intro E.likelihoodClosed E.riskLevelClosed)))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse
