import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure DisplaciveTransformationObject where
  parentPhase : Type u
  productPhase : Type u
  transformationPath : Type v
  displaciveMapping : transformationPath → (parentPhase → productPhase)
  latticeCompatibility : Prop
  shpitalnoModel : Prop
  conclusion : latticeCompatibility ∧ shpitalnoModel

structure AdmissibleClass where
  object : DisplaciveTransformationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.latticeCompatibility ∧ A.object.shpitalnoModel) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse