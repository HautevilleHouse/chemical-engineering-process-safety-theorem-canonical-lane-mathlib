import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.ReliabilityAnalysis

/-!
# Final Risk Assessment Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure FinalRiskAssessmentPackage {G : ProcessSafetyFoundationPackage}
    {H : HazardIdentificationPackage G} {L : LayerOfProtectionPackage H}
    {R : ReliabilityAnalysisPackage L} where
  overallRiskTolerable : Prop
  safetyIntegrityLevel : Prop
  managementOfChangeApplied : Prop
  emergencyResponsePlan : Prop

structure FinalRiskAssessmentEvidence {G : ProcessSafetyFoundationPackage}
    {H : HazardIdentificationPackage G} {L : LayerOfProtectionPackage H}
    {R : ReliabilityAnalysisPackage L} (F : FinalRiskAssessmentPackage R) where
  overallRiskTolerableClosed : F.overallRiskTolerable
  safetyIntegrityLevelClosed : F.safetyIntegrityLevel
  managementOfChangeAppliedClosed : F.managementOfChangeApplied
  emergencyResponsePlanClosed : F.emergencyResponsePlan

def FinalRiskAssessmentClosed {G : ProcessSafetyFoundationPackage}
    {H : HazardIdentificationPackage G} {L : LayerOfProtectionPackage H}
    {R : ReliabilityAnalysisPackage L} (F : FinalRiskAssessmentPackage R) : Prop :=
  F.overallRiskTolerable ∧ F.safetyIntegrityLevel ∧ F.managementOfChangeApplied ∧ F.emergencyResponsePlan

theorem final_risk_assessment_closed_from_evidence
    {G : ProcessSafetyFoundationPackage} {H : HazardIdentificationPackage G}
    {L : LayerOfProtectionPackage H} {R : ReliabilityAnalysisPackage L}
    (F : FinalRiskAssessmentPackage R) (E : FinalRiskAssessmentEvidence F) :
    FinalRiskAssessmentClosed F := by
  exact And.intro E.overallRiskTolerableClosed
    (And.intro E.safetyIntegrityLevelClosed
      (And.intro E.managementOfChangeAppliedClosed E.emergencyResponsePlanClosed))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse