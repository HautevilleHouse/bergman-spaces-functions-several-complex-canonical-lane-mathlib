import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplex.BergmanSpaceDefinitions

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplex

structure ToeplitzOperator (B : BergmanSpace n) where
  symbol : ℂⁿ → ℂ
  symbolBounded : BoundedOn (B.Ω) symbol
  toeplitzMap : L² (B.Ω) → L² (B.Ω)
  toeplitzBounded : BoundedLinearOperator (L² B.Ω) (L² B.Ω) toeplitzMap
  compactnessProperties : Prop

structure ToeplitzOperatorEvidence (B : BergmanSpace n) (T : ToeplitzOperator B) where
  symbolBoundedClosed : T.symbolBounded
  toeplitzBoundedClosed : T.toeplitzBounded
  compactnessPropertiesClosed : T.compactnessProperties

def ToeplitzOperatorClosed (B : BergmanSpace n) (T : ToeplitzOperator B) : Prop :=
  T.symbolBounded ∧ T.toeplitzBounded ∧ T.compactnessProperties

theorem toeplitz_operator_closed_from_evidence (B : BergmanSpace n) (T : ToeplitzOperator B)
    (E : ToeplitzOperatorEvidence B T) : ToeplitzOperatorClosed B T := by
  exact And.intro E.symbolBoundedClosed (And.intro E.toeplitzBoundedClosed E.compactnessPropertiesClosed)

end BergmanSpacesFunctionsSeveralComplex
end HautevilleHouse