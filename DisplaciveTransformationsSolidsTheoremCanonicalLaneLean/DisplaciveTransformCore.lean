import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure DisplaciveCrystalStructure where
  carrier : Type u
  topology : TopologicalSpace carrier
  latticeVectors : carrier → carrier → carrier
  basisAtoms : List carrier
  spaceGroupSymmetries : Prop
  displaciveMode : carrier → carrier

structure DisplaciveAdmittedObject where
  crystal : DisplaciveCrystalStructure
  homogeneousDeformation : Prop
  orderParameter : Type v
  transitionTemperature : ℝ
  softModeExists : Prop
  conclusion : softModeExists

def DisplaciveWitnessClosed (O : DisplaciveAdmittedObject) : Prop :=
  O.softModeExists

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse