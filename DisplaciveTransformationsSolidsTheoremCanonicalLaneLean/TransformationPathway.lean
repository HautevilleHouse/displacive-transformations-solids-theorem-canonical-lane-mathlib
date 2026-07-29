import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure TransformationPathwayPackage where
  pathwayType : Type u
  energyBarrier : Prop
  transitionState : Type v
  pathwayTypeClosed : Prop
  energyBarrierClosed : energyBarrier
  transitionStateClosed : Prop

structure TransformationPathwayEvidence (T : TransformationPathwayPackage) where
  pathwayTypeClosedClosed : T.pathwayTypeClosed
  energyBarrierClosedClosed : T.energyBarrierClosed
  transitionStateClosedClosed : T.transitionStateClosed

def TransformationPathwayClosed (T : TransformationPathwayPackage) : Prop :=
  T.pathwayTypeClosed ∧ T.energyBarrierClosed ∧ T.transitionStateClosed

theorem transformation_pathway_closed_from_evidence (T : TransformationPathwayPackage) (E : TransformationPathwayEvidence T) : TransformationPathwayClosed T := by
  exact And.intro E.pathwayTypeClosedClosed (And.intro E.energyBarrierClosedClosed E.transitionStateClosedClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
