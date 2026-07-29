import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.ProcessSafetyFoundation

/-!
# Hazard Identification Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure HazardIdentificationPackage {G : ProcessSafetyFoundationPackage} where
  hazardScenarioIdentified : Prop
  likelihoodAssessment : Prop
  consequenceAnalysis : Prop
  riskRanking : Prop
  safeguardsInPlace : Prop

structure HazardIdentificationEvidence {G : ProcessSafetyFoundationPackage} (H : HazardIdentificationPackage G) where
  hazardScenarioIdentifiedClosed : H.hazardScenarioIdentified
  likelihoodAssessmentClosed : H.likelihoodAssessment
  consequenceAnalysisClosed : H.consequenceAnalysis
  riskRankingClosed : H.riskRanking
  safeguardsInPlaceClosed : H.safeguardsInPlace

def HazardIdentificationClosed {G : ProcessSafetyFoundationPackage} (H : HazardIdentificationPackage G) : Prop :=
  H.hazardScenarioIdentified ∧ H.likelihoodAssessment ∧ H.consequenceAnalysis ∧ H.riskRanking ∧ H.safeguardsInPlace

theorem hazard_identification_closed_from_evidence
    {G : ProcessSafetyFoundationPackage} (H : HazardIdentificationPackage G)
    (E : HazardIdentificationEvidence H) : HazardIdentificationClosed H := by
  exact And.intro E.hazardScenarioIdentifiedClosed
    (And.intro E.likelihoodAssessmentClosed
      (And.intro E.consequenceAnalysisClosed
        (And.intro E.riskRankingClosed E.safeguardsInPlaceClosed)))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse