import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def processSafetyProjection : Projection ProcessSafetyEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem process_safety_projection_idempotent (x : ProcessSafetyEndgameState) :
    processSafetyProjection.toFun (processSafetyProjection.toFun x) = processSafetyProjection.toFun x := by
  exact processSafetyProjection.idempotent x

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse