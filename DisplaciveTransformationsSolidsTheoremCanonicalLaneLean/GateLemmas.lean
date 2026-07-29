import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse