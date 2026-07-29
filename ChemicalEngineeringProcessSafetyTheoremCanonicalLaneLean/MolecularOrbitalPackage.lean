import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure MolecularOrbitalPackage where
  waveFunction : Prop
  orbitalEnergies : Prop
  bondOrder : Prop
  homoLumoGap : Prop
  electronDensity : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  waveFunctionClosed : M.waveFunction
  orbitalEnergiesClosed : M.orbitalEnergies
  bondOrderClosed : M.bondOrder
  homoLumoGapClosed : M.homoLumoGap
  electronDensityClosed : M.electronDensity

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.waveFunction ∧ M.orbitalEnergies ∧ M.bondOrder ∧ M.homoLumoGap ∧ M.electronDensity

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.waveFunctionClosed
    (And.intro E.orbitalEnergiesClosed
      (And.intro E.bondOrderClosed
        (And.intro E.homoLumoGapClosed E.electronDensityClosed)))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse