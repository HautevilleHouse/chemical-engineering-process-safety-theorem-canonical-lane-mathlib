import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure FlammabilityEnvelope where
  lowerFlammabilityLimit : ℝ
  upperFlammabilityLimit : ℝ
  operatingConcentration : ℝ
  inertingEffective : Prop
  envelopeSafe : Prop

structure FlammabilityEvidence (F : FlammabilityEnvelope) where
  envelopeSafeClosed : F.envelopeSafe
  inertingEffectiveClosed : F.inertingEffective

def FlammabilityClosed (F : FlammabilityEnvelope) : Prop :=
  F.envelopeSafe ∧ F.inertingEffective

theorem flammability_closed_from_evidence (F : FlammabilityEnvelope) (E : FlammabilityEvidence F) :
    FlammabilityClosed F := by
  exact And.intro E.envelopeSafeClosed E.inertingEffectiveClosed

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse