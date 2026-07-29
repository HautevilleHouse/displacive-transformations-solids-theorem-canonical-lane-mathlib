import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.SoftModeEntropy

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure DisplacivePhononInstabilityPackage {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {E : SoftModeEntropyPackage H} (Ep : SoftModeEntropyEvidence E) where
  phononModeSoftening : Prop
  instabilityTemperature : Prop
  displaciveCharacter : Prop
  precursorDynamics : Prop
  phononModeSofteningClosed : phononModeSoftening
  instabilityTemperatureClosed : instabilityTemperature
  displaciveCharacterClosed : displaciveCharacter
  precursorDynamicsClosed : precursorDynamics

structure DisplacivePhononInstabilityEvidence {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {E : SoftModeEntropyPackage H} {Ep : SoftModeEntropyEvidence E}
    (P : DisplacivePhononInstabilityPackage Ep) where
  phononModeSofteningClosed : P.phononModeSofteningClosed
  instabilityTemperatureClosed : P.instabilityTemperatureClosed
  displaciveCharacterClosed : P.displaciveCharacterClosed
  precursorDynamicsClosed : P.precursorDynamicsClosed

def DisplacivePhononInstabilityClosed {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {E : SoftModeEntropyPackage H} {Ep : SoftModeEntropyEvidence E}
    (P : DisplacivePhononInstabilityPackage Ep) : Prop :=
  P.phononModeSoftening ∧ P.instabilityTemperature ∧ P.displaciveCharacter ∧ P.precursorDynamics

theorem displacive_phonon_instability_closed_from_evidence
    {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {E : SoftModeEntropyPackage H} {Ep : SoftModeEntropyEvidence E}
    (P : DisplacivePhononInstabilityPackage Ep) (Ev : DisplacivePhononInstabilityEvidence P) :
    DisplacivePhononInstabilityClosed P := by
  exact And.intro Ev.phononModeSofteningClosed
    (And.intro Ev.instabilityTemperatureClosed
      (And.intro Ev.displaciveCharacterClosed Ev.precursorDynamicsClosed))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse