import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.CrystalLatticeDynamics

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure SoftModeEntropyPackage {C : CrystalLatticeDynamicsPackage} (H : CrystalLatticeDynamicsEvidence C) where
  entropyFunctional : Type u
  softModeEntropyProduction : Prop
  entropyLowerBound : Prop
  modeSofteningTransfer : Prop
  entropyProductionClosed : Prop
  entropyLowerBoundClosed : Prop
  modeSofteningTransferClosed : Prop

structure SoftModeEntropyEvidence {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    (E : SoftModeEntropyPackage H) where
  entropyProductionClosed : E.entropyProductionClosed
  entropyLowerBoundClosed : E.entropyLowerBoundClosed
  modeSofteningTransferClosed : E.modeSofteningTransferClosed

def SoftModeEntropyClosed {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    (E : SoftModeEntropyPackage H) : Prop :=
  E.entropyProductionClosed ∧ E.entropyLowerBoundClosed ∧ E.modeSofteningTransferClosed

theorem soft_mode_entropy_closed_from_evidence
    {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    (E : SoftModeEntropyPackage H) (Ev : SoftModeEntropyEvidence E) :
    SoftModeEntropyClosed E := by
  exact And.intro Ev.entropyProductionClosed
    (And.intro Ev.entropyLowerBoundClosed Ev.modeSofteningTransferClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse