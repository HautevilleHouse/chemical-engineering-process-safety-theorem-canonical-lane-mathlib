import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.BridgeLemmas
import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

def ConstrainedChemicalProcessSafetyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_process_safety_endgame (A : AdmissibleClass) :
    ConstrainedChemicalProcessSafetyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse