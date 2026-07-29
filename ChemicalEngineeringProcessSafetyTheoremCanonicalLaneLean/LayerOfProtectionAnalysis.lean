import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure IndependentProtectionLayer where
  layerId : String
  layerType : String
  effectiveness : Prop
  independence : Prop
  auditInterval : Prop
  proofTestInterval : Prop
  reliability : Prop

structure IndependentProtectionLayerEvidence (L : IndependentProtectionLayer) where
  effectivenessClosed : L.effectiveness
  independenceClosed : L.independence
  auditIntervalClosed : L.auditInterval
  proofTestIntervalClosed : L.proofTestInterval
  reliabilityClosed : L.reliability

def IndependentProtectionLayerClosed (L : IndependentProtectionLayer) : Prop :=
  L.effectiveness ∧ L.independence ∧ L.auditInterval ∧ L.proofTestInterval ∧ L.reliability

theorem independent_protection_layer_closed_from_evidence (L : IndependentProtectionLayer) (E : IndependentProtectionLayerEvidence L) :
    IndependentProtectionLayerClosed L := by
  exact And.intro E.effectivenessClosed
    (And.intro E.independenceClosed
      (And.intro E.auditIntervalClosed
        (And.intro E.proofTestIntervalClosed E.reliabilityClosed)))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse
