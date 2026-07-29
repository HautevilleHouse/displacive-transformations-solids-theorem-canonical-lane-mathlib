import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure PhononSofteningPackage where
  phononDispersion : Type u
  softModeWavevector : Type v
  temperatureDependence : Prop
  anharmonicCoupling : Prop
  instabilityThreshold : Prop

structure PhononSofteningEvidence (P : PhononSofteningPackage) where
  temperatureDependenceClosed : P.temperatureDependence
  anharmonicCouplingClosed : P.anharmonicCoupling
  instabilityThresholdClosed : P.instabilityThreshold

def PhononSofteningClosed (P : PhononSofteningPackage) : Prop :=
  P.temperatureDependence ∧ P.anharmonicCoupling ∧ P.instabilityThreshold

theorem phonon_softening_closed_from_evidence (P : PhononSofteningPackage) (E : PhononSofteningEvidence P) : PhononSofteningClosed P := by
  exact And.intro E.temperatureDependenceClosed (And.intro E.anharmonicCouplingClosed E.instabilityThresholdClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse