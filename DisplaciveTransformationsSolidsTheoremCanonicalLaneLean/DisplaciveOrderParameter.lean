import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.CrystalLatticeDynamics

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure DisplaciveOrderParameterPackage {C : CrystalLatticeDynamicsPackage} (H : CrystalLatticeDynamicsEvidence C) where
  orderParameterSpace : Type u
  freeEnergyLandscape : Prop
  orderParameterTransition : Prop
  criticalExponent : Prop
  freeEnergyLandscapeClosed : freeEnergyLandscape
  orderParameterTransitionClosed : orderParameterTransition
  criticalExponentClosed : criticalExponent

structure DisplaciveOrderParameterEvidence {C : CrystalLatticeDynamicsPackage}
    {H : CrystalLatticeDynamicsEvidence C} (D : DisplaciveOrderParameterPackage H) where
  freeEnergyLandscapeClosed : D.freeEnergyLandscapeClosed
  orderParameterTransitionClosed : D.orderParameterTransitionClosed
  criticalExponentClosed : D.criticalExponentClosed

def DisplaciveOrderParameterClosed {C : CrystalLatticeDynamicsPackage}
    {H : CrystalLatticeDynamicsEvidence C} (D : DisplaciveOrderParameterPackage H) : Prop :=
  D.freeEnergyLandscape ∧ D.orderParameterTransition ∧ D.criticalExponent

theorem displacive_order_parameter_closed_from_evidence
    {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    (D : DisplaciveOrderParameterPackage H) (E : DisplaciveOrderParameterEvidence D) :
    DisplaciveOrderParameterClosed D := by
  exact And.intro E.freeEnergyLandscapeClosed
    (And.intro E.orderParameterTransitionClosed E.criticalExponentClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse