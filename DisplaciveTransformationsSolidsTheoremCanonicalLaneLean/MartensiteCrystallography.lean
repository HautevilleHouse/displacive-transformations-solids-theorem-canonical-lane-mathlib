import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.SpitalnoStrainTensor

/-!
# Martensite Crystallography Package
-/

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure MartensiteCrystallographyPackage where
  habitPlane : Type u
  orientationRelation : Type v
  invariantLineCondition : Prop
  habitPlaneDetermined : Prop

structure MartensiteCrystallographyEvidence (M : MartensiteCrystallographyPackage) where
  invariantLineConditionClosed : M.invariantLineCondition
  habitPlaneDeterminedClosed : M.habitPlaneDetermined

def MartensiteCrystallographyClosed (M : MartensiteCrystallographyPackage) : Prop :=
  M.invariantLineCondition ∧ M.habitPlaneDetermined

theorem martensite_crystallography_closed_from_evidence (M : MartensiteCrystallographyPackage)
    (E : MartensiteCrystallographyEvidence M) : MartensiteCrystallographyClosed M :=
  And.intro E.invariantLineConditionClosed E.habitPlaneDeterminedClosed

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse