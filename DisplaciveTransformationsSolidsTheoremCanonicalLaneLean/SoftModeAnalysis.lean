import HautevilleHouse.DisplaciveTransformationsSolidsTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Soft Mode Analysis Package
-/

namespace HautevilleHouse
namespace DisplaciveTransformationsSolidsTheoremCanonicalLaneLean

structure SoftModeAnalysisPackage where
  phononDispersion : Type u
  modeFrequency : Type v
  softeningCondition : Prop
  criticalTemperature : Prop

structure SoftModeAnalysisEvidence (S : SoftModeAnalysisPackage) where
  softeningConditionClosed : S.softeningCondition
  criticalTemperatureClosed : S.criticalTemperature

def SoftModeAnalysisClosed (S : SoftModeAnalysisPackage) : Prop :=
  S.softeningCondition ∧ S.criticalTemperature

theorem soft_mode_analysis_closed_from_evidence (S : SoftModeAnalysisPackage)
    (E : SoftModeAnalysisEvidence S) : SoftModeAnalysisClosed S :=
  And.intro E.softeningConditionClosed E.criticalTemperatureClosed

end DisplaciveTransformationsSolidsTheoremCanonicalLaneLean
end HautevilleHouse