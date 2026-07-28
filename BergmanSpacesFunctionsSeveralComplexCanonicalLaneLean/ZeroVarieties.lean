import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplex.BergmanSpaceDefinitions

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplex

structure ZeroVariety (B : BergmanSpace n) where
  f : BergmanSpaceA² B
  zeroSet : Set ℂⁿ
  zeroSetAnalytic : AnalyticSet zeroSet
  multiplicityFunction : ℂⁿ → ℕ
  LelongNumberFinite : ∀ z ∈ zeroSet, LelongNumber f z < ∞

structure ZeroVarietyEvidence (B : BergmanSpace n) (Z : ZeroVariety B) where
  zeroSetAnalyticClosed : Z.zeroSetAnalytic
  LelongNumberFiniteClosed : Z.LelongNumberFinite

def ZeroVarietyClosed (B : BergmanSpace n) (Z : ZeroVariety B) : Prop :=
  Z.zeroSetAnalytic ∧ Z.LelongNumberFinite

theorem zero_variety_closed_from_evidence (B : BergmanSpace n) (Z : ZeroVariety B)
    (E : ZeroVarietyEvidence B Z) : ZeroVarietyClosed B Z := by
  exact And.intro E.zeroSetAnalyticClosed E.LelongNumberFiniteClosed

end BergmanSpacesFunctionsSeveralComplex
end HautevilleHouse