import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanDomain where
  space : Type u
  topology : TopologicalSpace space
  complexStructure : ComplexStructure space
  dimension : ℕ
  bounded : Prop
  pseudoconvex : Prop
  boundedTerm : bounded
  pseudoconvexTerm : pseudoconvex

structure BergmanDomainEvidence (Ω : BergmanDomain) where
  boundedClosed : Ω.bounded
  pseudoconvexClosed : Ω.pseudoconvex

def BergmanDomainClosed (Ω : BergmanDomain) : Prop :=
  Ω.bounded ∧ Ω.pseudoconvex

theorem bergman_domain_closed_from_evidence (Ω : BergmanDomain) (E : BergmanDomainEvidence Ω) :
    BergmanDomainClosed Ω := by
  exact And.intro E.boundedClosed E.pseudoconvexClosed

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse