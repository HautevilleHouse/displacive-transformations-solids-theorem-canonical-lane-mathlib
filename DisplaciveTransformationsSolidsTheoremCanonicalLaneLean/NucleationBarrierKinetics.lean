import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure NucleationBarrierKineticsPackage where
  criticalNucleusSize : Type u
  activationEnergy : Type v
  undercoolingDependence : Prop
  interfaceMobility : Prop
  growthLaw : Prop

structure NucleationBarrierKineticsEvidence (N : NucleationBarrierKineticsPackage) where
  undercoolingDependenceClosed : N.undercoolingDependence
  interfaceMobilityClosed : N.interfaceMobility
  growthLawClosed : N.growthLaw

def NucleationBarrierKineticsClosed (N : NucleationBarrierKineticsPackage) : Prop :=
  N.undercoolingDependence ∧ N.interfaceMobility ∧ N.growthLaw

theorem nucleation_barrier_kinetics_closed_from_evidence (N : NucleationBarrierKineticsPackage) (E : NucleationBarrierKineticsEvidence N) : NucleationBarrierKineticsClosed N := by
  exact And.intro E.undercoolingDependenceClosed (And.intro E.interfaceMobilityClosed E.growthLawClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse