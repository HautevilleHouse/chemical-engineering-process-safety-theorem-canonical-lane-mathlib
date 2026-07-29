import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ConsequenceScenario where
  scenarioId : String
  releaseScenario : Prop
  dispersionModel : Prop
  flammableConsequence : Prop
  toxicConsequence : Prop
  explosionConsequence : Prop
  endpointCriteria : Prop
  severityLevel : Prop

structure ConsequenceScenarioEvidence (C : ConsequenceScenario) where
  releaseScenarioClosed : C.releaseScenario
  dispersionModelClosed : C.dispersionModel
  flammableConsequenceClosed : C.flammableConsequence
  toxicConsequenceClosed : C.toxicConsequence
  explosionConsequenceClosed : C.explosionConsequence
  endpointCriteriaClosed : C.endpointCriteria
  severityLevelClosed : C.severityLevel

def ConsequenceScenarioClosed (C : ConsequenceScenario) : Prop :=
  C.releaseScenario ∧ C.dispersionModel ∧ C.flammableConsequence ∧ C.toxicConsequence ∧ C.explosionConsequence ∧ C.endpointCriteria ∧ C.severityLevel

theorem consequence_scenario_closed_from_evidence (C : ConsequenceScenario) (E : ConsequenceScenarioEvidence C) :
    ConsequenceScenarioClosed C := by
  exact And.intro E.releaseScenarioClosed
    (And.intro E.dispersionModelClosed
      (And.intro E.flammableConsequenceClosed
        (And.intro E.toxicConsequenceClosed
          (And.intro E.explosionConsequenceClosed
            (And.intro E.endpointCriteriaClosed E.severityLevelClosed)))))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse
