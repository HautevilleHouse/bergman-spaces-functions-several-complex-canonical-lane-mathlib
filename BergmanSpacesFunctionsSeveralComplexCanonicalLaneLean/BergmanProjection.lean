import BergmanKernel

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanProjectionPackage (B : BergmanAdmittedObject) (K : BergmanKernelPackage B) where
  projectionOperator : Type
  boundedness : Prop
  orthogonalProjection : Prop
  relationshipToKernel : Prop

structure BergmanProjectionEvidence (B : BergmanAdmittedObject) (K : BergmanKernelPackage B)
    (P : BergmanProjectionPackage B K) where
  boundednessClosed : P.boundedness
  orthogonalProjectionClosed : P.orthogonalProjection
  relationshipToKernelClosed : P.relationshipToKernel

def BergmanProjectionClosed (B : BergmanAdmittedObject) (K : BergmanKernelPackage B)
    (P : BergmanProjectionPackage B K) : Prop :=
  P.boundedness ∧ P.orthogonalProjection ∧ P.relationshipToKernel

theorem bergman_projection_closed_from_evidence (B : BergmanAdmittedObject) (K : BergmanKernelPackage B)
    (P : BergmanProjectionPackage B K) (E : BergmanProjectionEvidence B K P) :
    BergmanProjectionClosed B K P := by
  exact And.intro E.boundednessClosed
    (And.intro E.orthogonalProjectionClosed E.relationshipToKernelClosed)

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse