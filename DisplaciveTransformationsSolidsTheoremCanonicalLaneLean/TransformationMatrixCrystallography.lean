import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure StrainTensorPackage where
  latticeVectors : Type u
  strainTensor : Type v
  symmetryCompatibility : Prop
  rankTwoTensor : Prop
  transformationLaw : Prop

structure StrainTensorEvidence (S : StrainTensorPackage) where
  symmetryCompatibilityClosed : S.symmetryCompatibility
  rankTwoTensorClosed : S.rankTwoTensor
  transformationLawClosed : S.transformationLaw

def StrainTensorClosed (S : StrainTensorPackage) : Prop :=
  S.symmetryCompatibility ∧ S.rankTwoTensor ∧ S.transformationLaw

theorem strain_tensor_closed_from_evidence (S : StrainTensorPackage) (E : StrainTensorEvidence S) : StrainTensorClosed S := by
  exact And.intro E.symmetryCompatibilityClosed (And.intro E.rankTwoTensorClosed E.transformationLawClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse