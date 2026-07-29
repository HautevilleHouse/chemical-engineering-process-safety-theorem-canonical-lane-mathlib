import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  reactionQuotient : Prop
  equilibriumCondition : Prop
  leChatelierPrinciple : Prop
  temperatureEffect : Prop
  pressureEffect : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  reactionQuotientClosed : C.reactionQuotient
  equilibriumConditionClosed : C.equilibriumCondition
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  temperatureEffectClosed : C.temperatureEffect
  pressureEffectClosed : C.pressureEffect

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.reactionQuotient ∧ C.equilibriumCondition ∧ C.leChatelierPrinciple ∧ C.temperatureEffect ∧ C.pressureEffect

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.reactionQuotientClosed
    (And.intro E.equilibriumConditionClosed
      (And.intro E.leChatelierPrincipleClosed
        (And.intro E.temperatureEffectClosed E.pressureEffectClosed)))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse