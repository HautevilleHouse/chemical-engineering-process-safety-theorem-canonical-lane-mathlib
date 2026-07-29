import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ProcessHazardPackage where
  hazardIdentification : Prop
  consequenceAnalysis : Prop
  likelihoodEstimation : Prop
  riskRanking : Prop

structure ProcessHazardEvidence (P : ProcessHazardPackage) where
  hazardIdentificationClosed : P.hazardIdentification
  consequenceAnalysisClosed : P.consequenceAnalysis
  likelihoodEstimationClosed : P.likelihoodEstimation
  riskRankingClosed : P.riskRanking

def ProcessHazardClosed (P : ProcessHazardPackage) : Prop :=
  P.hazardIdentification ∧ P.consequenceAnalysis ∧ P.likelihoodEstimation ∧ P.riskRanking

theorem process_hazard_closed_from_evidence (P : ProcessHazardPackage) (E : ProcessHazardEvidence P) :
    ProcessHazardClosed P := by
  exact And.intro E.hazardIdentificationClosed
    (And.intro E.consequenceAnalysisClosed
      (And.intro E.likelihoodEstimationClosed E.riskRankingClosed))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse