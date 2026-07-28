import BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure DomainGeometryPackage (D : BergmanDomain) where
  boundedSmoothBoundary : Prop
  strictlyPseudoconvex : Prop
  leviCondition : Prop
  exhaustionFunction : Prop

structure DomainGeometryEvidence (D : BergmanDomain) (G : DomainGeometryPackage D) where
  boundedSmoothBoundaryClosed : G.boundedSmoothBoundary
  strictlyPseudoconvexClosed : G.strictlyPseudoconvex
  leviConditionClosed : G.leviCondition
  exhaustionFunctionClosed : G.exhaustionFunction

def DomainGeometryClosed (D : BergmanDomain) (G : DomainGeometryPackage D) : Prop :=
  G.boundedSmoothBoundary ∧ G.strictlyPseudoconvex ∧ G.leviCondition ∧ G.exhaustionFunction

theorem domain_geometry_closed_from_evidence (D : BergmanDomain) (G : DomainGeometryPackage D)
    (E : DomainGeometryEvidence D G) : DomainGeometryClosed D G := by
  exact And.intro E.boundedSmoothBoundaryClosed
    (And.intro E.strictlyPseudoconvexClosed
      (And.intro E.leviConditionClosed E.exhaustionFunctionClosed))

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse
