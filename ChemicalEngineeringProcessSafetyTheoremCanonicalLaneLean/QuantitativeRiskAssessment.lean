import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure QuantitativeRiskAssessmentPackage where
  scenarioIdentification : Prop
  frequencyAnalysis : Prop
  consequenceAnalysis : Prop
  riskIntegration : Prop
  riskToleranceCriteria : Prop

structure QuantitativeRiskAssessmentEvidence (Q : QuantitativeRiskAssessmentPackage) where
  scenarioIdentificationClosed : Q.scenarioIdentification
  frequencyAnalysisClosed : Q.frequencyAnalysis
  consequenceAnalysisClosed : Q.consequenceAnalysis
  riskIntegrationClosed : Q.riskIntegration
  riskToleranceCriteriaClosed : Q.riskToleranceCriteria

def QuantitativeRiskAssessmentClosed (Q : QuantitativeRiskAssessmentPackage) : Prop :=
  Q.scenarioIdentification ∧ Q.frequencyAnalysis ∧ Q.consequenceAnalysis ∧ Q.riskIntegration ∧ Q.riskToleranceCriteria

theorem quantitative_risk_assessment_closed_from_evidence (Q : QuantitativeRiskAssessmentPackage) (E : QuantitativeRiskAssessmentEvidence Q) :
    QuantitativeRiskAssessmentClosed Q := by
  exact And.intro E.scenarioIdentificationClosed
    (And.intro E.frequencyAnalysisClosed
      (And.intro E.consequenceAnalysisClosed
        (And.intro E.riskIntegrationClosed E.riskToleranceCriteriaClosed)))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse