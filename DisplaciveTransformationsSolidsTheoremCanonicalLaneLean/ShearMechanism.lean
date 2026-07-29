import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.MartensiteCrystallography

/-!
# Shear Mechanism Package
-/

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure ShearMechanismPackage where
  shearSystem : Type u
  atomicShuffle : Type v
  homogeneousShear : Prop
  shufflingCompatible : Prop

structure ShearMechanismEvidence (S : ShearMechanismPackage) where
  homogeneousShearClosed : S.homogeneousShear
  shufflingCompatibleClosed : S.shufflingCompatible

def ShearMechanismClosed (S : ShearMechanismPackage) : Prop :=
  S.homogeneousShear ∧ S.shufflingCompatible

theorem shear_mechanism_closed_from_evidence (S : ShearMechanismPackage)
    (E : ShearMechanismEvidence S) : ShearMechanismClosed S :=
  And.intro E.homogeneousShearClosed E.shufflingCompatibleClosed

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse