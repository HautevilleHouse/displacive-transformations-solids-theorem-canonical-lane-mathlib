import canonicalLaneMathlib.AdmissibleClass

/-!
# Soft Mode Dynamics and Transformation Kinetics
-/

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure SoftModeDynamicsPackage where
  phononDispersion : Prop
  modeSofteningRate : Prop
  nucleationBarrier : Prop
  growthKinetics : Prop

structure SoftModeDynamicsEvidence (P : SoftModeDynamicsPackage) where
  phononDispersionClosed : P.phononDispersion
  modeSofteningRateClosed : P.modeSofteningRate
  nucleationBarrierClosed : P.nucleationBarrier
  growthKineticsClosed : P.growthKinetics

def SoftModeDynamicsClosed (P : SoftModeDynamicsPackage) : Prop :=
  P.phononDispersion ∧ P.modeSofteningRate ∧ P.nucleationBarrier ∧ P.growthKinetics

theorem soft_mode_dynamics_closed_from_evidence (P : SoftModeDynamicsPackage) (E : SoftModeDynamicsEvidence P) :
    SoftModeDynamicsClosed P := by
  exact And.intro E.phononDispersionClosed
    (And.intro E.modeSofteningRateClosed
      (And.intro E.nucleationBarrierClosed E.growthKineticsClosed))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
