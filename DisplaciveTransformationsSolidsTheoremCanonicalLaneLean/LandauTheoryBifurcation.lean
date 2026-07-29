import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.DisplaciveOrderParameter

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure LandauTheoryBifurcationPackage {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {D : DisplaciveOrderParameterPackage H} (Dp : DisplaciveOrderParameterEvidence D) where
  bifurcationType : Prop
  symmetryBreaking : Prop
  groupSubgroupRelation : Prop
  freeEnergyExpansion : Prop
  bifurcationTypeClosed : bifurcationType
  symmetryBreakingClosed : symmetryBreaking
  groupSubgroupRelationClosed : groupSubgroupRelation
  freeEnergyExpansionClosed : freeEnergyExpansion

structure LandauTheoryBifurcationEvidence {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {D : DisplaciveOrderParameterPackage H} {Dp : DisplaciveOrderParameterEvidence D}
    (L : LandauTheoryBifurcationPackage Dp) where
  bifurcationTypeClosed : L.bifurcationTypeClosed
  symmetryBreakingClosed : L.symmetryBreakingClosed
  groupSubgroupRelationClosed : L.groupSubgroupRelationClosed
  freeEnergyExpansionClosed : L.freeEnergyExpansionClosed

def LandauTheoryBifurcationClosed {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {D : DisplaciveOrderParameterPackage H} {Dp : DisplaciveOrderParameterEvidence D}
    (L : LandauTheoryBifurcationPackage Dp) : Prop :=
  L.bifurcationType ∧ L.symmetryBreaking ∧ L.groupSubgroupRelation ∧ L.freeEnergyExpansion

theorem landau_theory_bifurcation_closed_from_evidence
    {C : CrystalLatticeDynamicsPackage} {H : CrystalLatticeDynamicsEvidence C}
    {D : DisplaciveOrderParameterPackage H} {Dp : DisplaciveOrderParameterEvidence D}
    (L : LandauTheoryBifurcationPackage Dp) (E : LandauTheoryBifurcationEvidence L) :
    LandauTheoryBifurcationClosed L := by
  exact And.intro E.bifurcationTypeClosed
    (And.intro E.symmetryBreakingClosed
      (And.intro E.groupSubgroupRelationClosed E.freeEnergyExpansionClosed))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse