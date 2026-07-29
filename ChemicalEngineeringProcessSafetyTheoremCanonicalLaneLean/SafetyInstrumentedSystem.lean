import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure SafetyInstrumentedSystemPackage where
  safetyIntegrityLevel : Prop
  architectureConstraints : Prop
  proofTestInterval : Prop
  spuriousTripRate : Prop

structure SafetyInstrumentedSystemEvidence (S : SafetyInstrumentedSystemPackage) where
  safetyIntegrityLevelClosed : S.safetyIntegrityLevel
  architectureConstraintsClosed : S.architectureConstraints
  proofTestIntervalClosed : S.proofTestInterval
  spuriousTripRateClosed : S.spuriousTripRate

def SafetyInstrumentedSystemClosed (S : SafetyInstrumentedSystemPackage) : Prop :=
  S.safetyIntegrityLevel ∧ S.architectureConstraints ∧ S.proofTestInterval ∧ S.spuriousTripRate

theorem safety_instrumented_system_closed_from_evidence (S : SafetyInstrumentedSystemPackage) (E : SafetyInstrumentedSystemEvidence S) :
    SafetyInstrumentedSystemClosed S := by
  exact And.intro E.safetyIntegrityLevelClosed
    (And.intro E.architectureConstraintsClosed
      (And.intro E.proofTestIntervalClosed E.spuriousTripRateClosed))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse