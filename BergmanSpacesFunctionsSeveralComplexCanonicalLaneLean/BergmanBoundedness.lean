import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplex.BergmanSpaceDefinitions

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplex

structure BergmanBoundedness (B : BergmanSpace n) where
  bergmanProjection : BergmanProjection B
  lpBoundedness : ∀ p ∈ Set.Ioo 1 ∞, ∃ C : ℝ, ∀ f ∈ Lᵖ B.Ω, ∥bergmanProjection.projectionOperator f∥_Lp p ≤ C * ∥f∥_Lp p
  sharpConstant : ℝ
  sharpConstantOptimal : Prop

structure BergmanBoundednessEvidence (B : BergmanSpace n) (Bb : BergmanBoundedness B) where
  lpBoundednessClosed : Bb.lpBoundedness
  sharpConstantOptimalClosed : Bb.sharpConstantOptimal

def BergmanBoundednessClosed (B : BergmanSpace n) (Bb : BergmanBoundedness B) : Prop :=
  Bb.lpBoundedness ∧ Bb.sharpConstantOptimal

theorem bergman_boundedness_closed_from_evidence (B : BergmanSpace n) (Bb : BergmanBoundedness B)
    (E : BergmanBoundednessEvidence B Bb) : BergmanBoundednessClosed B Bb := by
  exact And.intro E.lpBoundednessClosed E.sharpConstantOptimalClosed

end BergmanSpacesFunctionsSeveralComplex
end HautevilleHouse