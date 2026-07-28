import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanKernelPackage

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanProjectionPackage (A : AdmissibleClass)
    (K : BergmanKernelPackage A) where
  projectionOperator : (A.object.domain → ℂ) → (A.object.domain → ℂ)
  boundedOnSquareIntegrable : Prop
  orthogonalProjection : Prop
  idempotent : Prop
  selfAdjoint : Prop

structure BergmanProjectionEvidence (A : AdmissibleClass) (K : BergmanKernelPackage A)
    (P : BergmanProjectionPackage A K) where
  boundedOnSquareIntegrableClosed : P.boundedOnSquareIntegrable
  orthogonalProjectionClosed : P.orthogonalProjection
  idempotentClosed : P.idempotent
  selfAdjointClosed : P.selfAdjoint

def BergmanProjectionClosed (A : AdmissibleClass) (K : BergmanKernelPackage A)
    (P : BergmanProjectionPackage A K) : Prop :=
  P.boundedOnSquareIntegrable ∧ P.orthogonalProjection ∧
  P.idempotent ∧ P.selfAdjoint

theorem bergman_projection_closed_from_evidence (A : AdmissibleClass)
    (K : BergmanKernelPackage A) (P : BergmanProjectionPackage A K)
    (E : BergmanProjectionEvidence A K P) : BergmanProjectionClosed A K P := by
  exact And.intro E.boundedOnSquareIntegrableClosed
    (And.intro E.orthogonalProjectionClosed
      (And.intro E.idempotentClosed E.selfAdjointClosed))

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse