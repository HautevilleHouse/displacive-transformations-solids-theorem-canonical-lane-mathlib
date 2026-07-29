import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  parentStructure : Type u
  bravaisLattice : Type v
  pointGroup : Type w
  spaceGroup : Type x
  latticeParameters : Prop
  parentStructureClosed : Prop
  bravaisLatticeClosed : Prop
  pointGroupClosed : Prop
  spaceGroupClosed : Prop
  latticeParametersClosed : latticeParameters

structure CrystalLatticeEvidence (L : CrystalLatticePackage) where
  parentStructureClosedClosed : L.parentStructureClosed
  bravaisLatticeClosedClosed : L.bravaisLatticeClosed
  pointGroupClosedClosed : L.pointGroupClosed
  spaceGroupClosedClosed : L.spaceGroupClosed

def CrystalLatticeClosed (L : CrystalLatticePackage) : Prop :=
  L.parentStructureClosed ∧ L.bravaisLatticeClosed ∧ L.pointGroupClosed ∧ L.spaceGroupClosed

theorem crystal_lattice_closed_from_evidence (L : CrystalLatticePackage) (E : CrystalLatticeEvidence L) : CrystalLatticeClosed L := by
  exact And.intro E.parentStructureClosedClosed (And.intro E.bravaisLatticeClosedClosed (And.intro E.pointGroupClosedClosed E.spaceGroupClosedClosed))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
