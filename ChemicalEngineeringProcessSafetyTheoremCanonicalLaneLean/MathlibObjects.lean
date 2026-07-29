import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProcessSafetySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProcessSafetyAdmittedObject where
  space : ProcessSafetySpace
  closedProcess : Prop
  chemicalReactorModel : Prop
  hazardModel : Type
  hazardTopology : TopologicalSpace hazardModel
  documentedSafety : Prop
  conclusion : documentedSafety

structure ProcessSafetyEndgameState where
  object : ProcessSafetyAdmittedObject

def ProcessSafetyWitnessClosed (O : ProcessSafetyAdmittedObject) : Prop :=
  O.documentedSafety

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse