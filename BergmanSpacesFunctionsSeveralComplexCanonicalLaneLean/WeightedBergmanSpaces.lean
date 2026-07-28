import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanDomain

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure WeightedBergmanSpacePackage (Ω : BergmanDomain) where
  weightFunction : Ω.space → ℝ
  integrabilityCondition : Prop
  normDefined : Prop
  completeness : Prop

structure WeightedBergmanSpaceEvidence {Ω : BergmanDomain} (W : WeightedBergmanSpacePackage Ω) where
  integrabilityConditionClosed : W.integrabilityCondition
  normDefinedClosed : W.normDefined
  completenessClosed : W.completeness

def WeightedBergmanSpaceClosed {Ω : BergmanDomain} (W : WeightedBergmanSpacePackage Ω) : Prop :=
  W.integrabilityCondition ∧ W.normDefined ∧ W.completeness

theorem weighted_bergman_space_closed_from_evidence {Ω : BergmanDomain} (W : WeightedBergmanSpacePackage Ω) (E : WeightedBergmanSpaceEvidence W) :
    WeightedBergmanSpaceClosed W := by
  exact And.intro E.integrabilityConditionClosed (And.intro E.normDefinedClosed E.completenessClosed)

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse