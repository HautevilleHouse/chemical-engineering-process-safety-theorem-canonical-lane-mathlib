import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.LayerOfProtectionAnalysis

/-!
# Reliability Analysis Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ReliabilityAnalysisPackage {G : ProcessSafetyFoundationPackage}
    {H : HazardIdentificationPackage G} {L : LayerOfProtectionPackage H} where
  componentReliability : Prop
  failureRateData : Prop
  meanTimeToFailure : Prop
  proofTestInterval : Prop

structure ReliabilityAnalysisEvidence {G : ProcessSafetyFoundationPackage}
    {H : HazardIdentificationPackage G} {L : LayerOfProtectionPackage H}
    (R : ReliabilityAnalysisPackage L) where
  componentReliabilityClosed : R.componentReliability
  failureRateDataClosed : R.failureRateData
  meanTimeToFailureClosed : R.meanTimeToFailure
  proofTestIntervalClosed : R.proofTestInterval

def ReliabilityAnalysisClosed {G : ProcessSafetyFoundationPackage}
    {H : HazardIdentificationPackage G} {L : LayerOfProtectionPackage H}
    (R : ReliabilityAnalysisPackage L) : Prop :=
  R.componentReliability ∧ R.failureRateData ∧ R.meanTimeToFailure ∧ R.proofTestInterval

theorem reliability_analysis_closed_from_evidence
    {G : ProcessSafetyFoundationPackage} {H : HazardIdentificationPackage G}
    {L : LayerOfProtectionPackage H} (R : ReliabilityAnalysisPackage L)
    (E : ReliabilityAnalysisEvidence R) : ReliabilityAnalysisClosed R := by
  exact And.intro E.componentReliabilityClosed
    (And.intro E.failureRateDataClosed
      (And.intro E.meanTimeToFailureClosed E.proofTestIntervalClosed))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse