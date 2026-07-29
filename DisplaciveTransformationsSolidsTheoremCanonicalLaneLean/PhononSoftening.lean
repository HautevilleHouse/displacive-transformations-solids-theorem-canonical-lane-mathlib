import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure PhononSofteningPackage where
  phononDispersion : Type u
  softeningMode : Type v
  condensationTemperature : Prop
  phononDispersionClosed : Prop
  softeningModeClosed : Prop
  condensationTemperatureClosed : condensationTemperature

structure PhononSofteningEvidence (P : PhononSofteningPackage) where
  phononDispersionClosedClosed : P.phononDispersionClosed
  softeningModeClosedClosed : P.softeningModeClosed
  condensationTemperatureClosedClosed : P.condensationTemperatureClosed

def PhononSofteningClosed (P : PhononSofteningPackage) : Prop :=
  P.phononDispersionClosed ∧ P.softeningModeClosed ∧ P.condensationTemperatureClosed

theorem phonon_softening_closed_from_evidence (P : PhononSofteningPackage) (E : PhononSofteningEvidence P) : PhononSofteningClosed P := by
  exact And.intro E.phononDispersionClosedClosed (And.intro E.softeningModeClosedClosed E.condensationTemperatureClosedClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
