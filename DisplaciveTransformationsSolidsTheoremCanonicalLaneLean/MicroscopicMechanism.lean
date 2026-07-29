import DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.StrainCoupling

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure MicroscopicMechanismPackage {L : LandauFreeEnergyPackage}
    {D : SoftModeDynamicsPackage L} {S : StrainCouplingPackage D} where
  latticeDynamics : Prop
  electronPhononInteraction : Prop
  anharmonicPotential : Prop
  isotopeEffect : Prop
  criticalTemperature : ℝ
  displaciveMechanism : Prop

structure MicroscopicMechanismEvidence {L : LandauFreeEnergyPackage}
    {D : SoftModeDynamicsPackage L} {S : StrainCouplingPackage D}
    (M : MicroscopicMechanismPackage L D S) where
  latticeDynamicsClosed : M.latticeDynamics
  electronPhononInteractionClosed : M.electronPhononInteraction
  anharmonicPotentialClosed : M.anharmonicPotential
  isotopeEffectClosed : M.isotopeEffect
  displaciveMechanismClosed : M.displaciveMechanism

def MicroscopicMechanismClosed {L : LandauFreeEnergyPackage}
    {D : SoftModeDynamicsPackage L} {S : StrainCouplingPackage D}
    (M : MicroscopicMechanismPackage L D S) : Prop :=
  M.latticeDynamics ∧ M.electronPhononInteraction ∧ M.anharmonicPotential ∧
  M.isotopeEffect ∧ M.displaciveMechanism

theorem microscopic_mechanism_closed_from_evidence
    {L : LandauFreeEnergyPackage} {D : SoftModeDynamicsPackage L}
    {S : StrainCouplingPackage D} (M : MicroscopicMechanismPackage L D S)
    (E : MicroscopicMechanismEvidence M) : MicroscopicMechanismClosed M := by
  exact And.intro E.latticeDynamicsClosed
    (And.intro E.electronPhononInteractionClosed
      (And.intro E.anharmonicPotentialClosed
        (And.intro E.isotopeEffectClosed E.displaciveMechanismClosed)))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse