import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Spitalno Strain Tensor Package
-/

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure SpitalnoStrainTensorPackage where
  strainTensor : Type u
  transformationStrain : Type v
  latticeCorrespondence : Prop
  irreducibleDecomposition : Prop

structure SpitalnoStrainTensorEvidence (S : SpitalnoStrainTensorPackage) where
  latticeCorrespondenceClosed : S.latticeCorrespondence
  irreducibleDecompositionClosed : S.irreducibleDecomposition

def SpitalnoStrainTensorClosed (S : SpitalnoStrainTensorPackage) : Prop :=
  S.latticeCorrespondence ∧ S.irreducibleDecomposition

theorem spitalno_strain_tensor_closed_from_evidence (S : SpitalnoStrainTensorPackage)
    (E : SpitalnoStrainTensorEvidence S) : SpitalnoStrainTensorClosed S :=
  And.intro E.latticeCorrespondenceClosed E.irreducibleDecompositionClosed

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse