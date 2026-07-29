import DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.SoftModeDynamics

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure StrainCouplingPackage {L : LandauFreeEnergyPackage}
    (D : SoftModeDynamicsPackage L) where
  strainOrderParameterCoupling : Prop
  elasticEnergyContribution : Prop
  spontaneousStrain : Prop
  compatibilityCondition : Prop
  renormalizationOfTc : Prop

structure StrainCouplingEvidence {L : LandauFreeEnergyPackage}
    {D : SoftModeDynamicsPackage L} (S : StrainCouplingPackage D) where
  strainOrderParameterCouplingClosed : S.strainOrderParameterCoupling
  elasticEnergyContributionClosed : S.elasticEnergyContribution
  spontaneousStrainClosed : S.spontaneousStrain
  compatibilityConditionClosed : S.compatibilityCondition
  renormalizationOfTcClosed : S.renormalizationOfTc

def StrainCouplingClosed {L : LandauFreeEnergyPackage}
    {D : SoftModeDynamicsPackage L} (S : StrainCouplingPackage D) : Prop :=
  S.strainOrderParameterCoupling ∧ S.elasticEnergyContribution ∧
  S.spontaneousStrain ∧ S.compatibilityCondition ∧ S.renormalizationOfTc

theorem strain_coupling_closed_from_evidence
    {L : LandauFreeEnergyPackage} {D : SoftModeDynamicsPackage L}
    (S : StrainCouplingPackage D) (E : StrainCouplingEvidence S) :
    StrainCouplingClosed S := by
  exact And.intro E.strainOrderParameterCouplingClosed
    (And.intro E.elasticEnergyContributionClosed
      (And.intro E.spontaneousStrainClosed
        (And.intro E.compatibilityConditionClosed E.renormalizationOfTcClosed)))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse