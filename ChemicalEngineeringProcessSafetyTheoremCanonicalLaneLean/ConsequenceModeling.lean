import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean

structure ConsequenceModelPackage where
  sourceTermModel : Prop
  dispersionModel : Prop
  fireExplosionModel : Prop
  toxicModel : Prop

structure ConsequenceModelEvidence (C : ConsequenceModelPackage) where
  sourceTermModelClosed : C.sourceTermModel
  dispersionModelClosed : C.dispersionModel
  fireExplosionModelClosed : C.fireExplosionModel
  toxicModelClosed : C.toxicModel

def ConsequenceModelClosed (C : ConsequenceModelPackage) : Prop :=
  C.sourceTermModel ∧ C.dispersionModel ∧ C.fireExplosionModel ∧ C.toxicModel

theorem consequence_model_closed_from_evidence (C : ConsequenceModelPackage) (E : ConsequenceModelEvidence C) :
    ConsequenceModelClosed C := by
  exact And.intro E.sourceTermModelClosed
    (And.intro E.dispersionModelClosed
      (And.intro E.fireExplosionModelClosed E.toxicModelClosed))

end ChemicalEngineeringProcessSafetyTheoremCanonicalLaneLean
end HautevilleHouse