import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure DisplacementFieldPackage where
  orderParameter : Type u
  displaciveMode : Type v
  softModeCondensation : Prop
  orderParameterClosed : Prop
  displaciveModeClosed : Prop
  softModeCondensationClosed : softModeCondensation

structure DisplacementFieldEvidence (D : DisplacementFieldPackage) where
  orderParameterClosedClosed : D.orderParameterClosed
  displaciveModeClosedClosed : D.displaciveModeClosed
  softModeCondensationClosedClosed : D.softModeCondensationClosed

def DisplacementFieldClosed (D : DisplacementFieldPackage) : Prop :=
  D.orderParameterClosed ∧ D.displaciveModeClosed ∧ D.softModeCondensationClosed

theorem displacement_field_closed_from_evidence (D : DisplacementFieldPackage) (E : DisplacementFieldEvidence D) : DisplacementFieldClosed D := by
  exact And.intro E.orderParameterClosedClosed (And.intro E.displaciveModeClosedClosed E.softModeCondensationClosedClosed)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
