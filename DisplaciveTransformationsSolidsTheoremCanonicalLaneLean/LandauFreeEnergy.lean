import canonicalLaneMathlib.AdmissibleClass

/-!
# Landau Free Energy Expansion for Displacive Transformations
-/

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure LandauFreeEnergyPackage where
  orderParameterDefined : Prop
  freeEnergyExpansion : Prop
  stabilityBranches : Prop
  transitionTemperature : Prop

structure LandauFreeEnergyEvidence (P : LandauFreeEnergyPackage) where
  orderParameterDefinedClosed : P.orderParameterDefined
  freeEnergyExpansionClosed : P.freeEnergyExpansion
  stabilityBranchesClosed : P.stabilityBranches
  transitionTemperatureClosed : P.transitionTemperature

def LandauFreeEnergyClosed (P : LandauFreeEnergyPackage) : Prop :=
  P.orderParameterDefined ∧ P.freeEnergyExpansion ∧ P.stabilityBranches ∧ P.transitionTemperature

theorem landau_free_energy_closed_from_evidence (P : LandauFreeEnergyPackage) (E : LandauFreeEnergyEvidence P) :
    LandauFreeEnergyClosed P := by
  exact And.intro E.orderParameterDefinedClosed
    (And.intro E.freeEnergyExpansionClosed
      (And.intro E.stabilityBranchesClosed E.transitionTemperatureClosed))

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse
