import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ProcessSafetyManagementPackage where
  processSafetyCulture : Prop
  operatingProcedures : Prop
  managementOfChange : Prop
  emergencyResponse : Prop
  incidentInvestigation : Prop

structure ProcessSafetyManagementEvidence (P : ProcessSafetyManagementPackage) where
  processSafetyCultureClosed : P.processSafetyCulture
  operatingProceduresClosed : P.operatingProcedures
  managementOfChangeClosed : P.managementOfChange
  emergencyResponseClosed : P.emergencyResponse
  incidentInvestigationClosed : P.incidentInvestigation

def ProcessSafetyManagementClosed (P : ProcessSafetyManagementPackage) : Prop :=
  P.processSafetyCulture ∧ P.operatingProcedures ∧ P.managementOfChange ∧ P.emergencyResponse ∧ P.incidentInvestigation

theorem process_safety_management_closed_from_evidence (P : ProcessSafetyManagementPackage) (E : ProcessSafetyManagementEvidence P) :
    ProcessSafetyManagementClosed P := by
  exact And.intro E.processSafetyCultureClosed
    (And.intro E.operatingProceduresClosed
      (And.intro E.managementOfChangeClosed
        (And.intro E.emergencyResponseClosed E.incidentInvestigationClosed)))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse