import canonicalLaneMathlib.AdmissibleClass

/-!
# Lattice Instability and Transformation Criterion
-/

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure LatticeInstabilityPackage where
  initialLatticeConfig : Prop
  phononSoftening : Prop
  instabilityThreshold : Prop
  transformationPathway : Prop

structure LatticeInstabilityEvidence (P : LatticeInstabilityPackage) where
  initialLatticeConfigClosed : P.initialLatticeConfig
  phononSofteningClosed : P.phononSoftening
  instabilityThresholdClosed : P.instabilityThreshold
  transformationPathwayClosed : P.transformationPathway

def LatticeInstabilityClosed (P : LatticeInstabilityPackage) : Prop :=
  P.initialLatticeConfig ∧ P.phononSoftening ∧ P.instabilityThreshold ∧ P.transformationPathway

theorem lattice_instability_closed_from_evidence (P : LatticeInstabilityPackage) (E : LatticeInstabilityEvidence P) :
    LatticeInstabilityClosed P := by
  exact And.intro E.initialLatticeConfigClosed
    (And.intro E.phononSofteningClosed
      (And.intro E.instabilityThresholdClosed E.transformationPathwayClosed))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
