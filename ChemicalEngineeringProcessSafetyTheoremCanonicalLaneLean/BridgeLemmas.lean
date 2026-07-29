import ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProcessSafetyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse