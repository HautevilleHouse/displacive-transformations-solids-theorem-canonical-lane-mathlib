import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

def ConstrainedDisplaciveClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_displacive_endgame (A : AdmissibleClass) :
    ConstrainedDisplaciveClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
