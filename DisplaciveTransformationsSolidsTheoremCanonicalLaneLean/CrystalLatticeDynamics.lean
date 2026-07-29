import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure CrystalLatticeDynamicsPackage where
  latticeWells : Prop
  phononDispersion : Prop
  anharmonicCoupling : Prop
  displaciveModeSoftening : Prop

structure CrystalLatticeDynamicsEvidence (C : CrystalLatticeDynamicsPackage) where
  latticeWellsClosed : C.latticeWells
  phononDispersionClosed : C.phononDispersion
  anharmonicCouplingClosed : C.anharmonicCoupling
  displaciveModeSofteningClosed : C.displaciveModeSoftening

def CrystalLatticeDynamicsClosed (C : CrystalLatticeDynamicsPackage) : Prop :=
  C.latticeWells ∧ C.phononDispersion ∧ C.anharmonicCoupling ∧ C.displaciveModeSoftening

theorem crystal_lattice_dynamics_closed_from_evidence
    (C : CrystalLatticeDynamicsPackage) (E : CrystalLatticeDynamicsEvidence C) :
    CrystalLatticeDynamicsClosed C := by
  exact And.intro E.latticeWellsClosed
    (And.intro E.phononDispersionClosed
      (And.intro E.anharmonicCouplingClosed E.displaciveModeSofteningClosed))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse