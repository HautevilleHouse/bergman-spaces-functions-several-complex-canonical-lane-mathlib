import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanSpace (Ω : Type*) [TopologicalSpace Ω] where
  domain : Ω
  dimension : ℕ
  measure : Type v
  L2Integrable : Prop
  holomorphicSubspace : Type w
  completeness : Prop
  reproducingKernelExists : Prop

structure BergmanSpaceEvidence (B : BergmanSpace Ω) where
  L2IntegrableClosed : B.L2Integrable
  holomorphicSubspaceClosed : B.holomorphicSubspace
  completenessClosed : B.completeness
  reproducingKernelExistsClosed : B.reproducingKernelExists

def BergmanSpaceClosed (B : BergmanSpace Ω) : Prop :=
  B.L2Integrable ∧ B.holomorphicSubspace ∧ B.completeness ∧ B.reproducingKernelExists

theorem bergman_space_closed_from_evidence (B : BergmanSpace Ω) (E : BergmanSpaceEvidence B) :
    BergmanSpaceClosed B := by
  exact And.intro E.L2IntegrableClosed (And.intro E.holomorphicSubspaceClosed (And.intro E.completenessClosed E.reproducingKernelExistsClosed))

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse