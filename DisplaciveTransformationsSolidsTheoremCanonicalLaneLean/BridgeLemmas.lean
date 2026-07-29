import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.latticeCompatibility ∧ A.object.shpitalnoModel

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse