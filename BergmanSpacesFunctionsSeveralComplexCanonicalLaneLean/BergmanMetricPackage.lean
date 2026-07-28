import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanKernelPackage

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanMetricPackage (A : AdmissibleClass)
    (K : BergmanKernelPackage A) where
  metricTensor : A.object.domain → ℂ → ℂ → ℂ
  hermitian : Prop
  positiveDefinite : Prop
  kaehler : Prop
  completeness : Prop

structure BergmanMetricEvidence (A : AdmissibleClass) (K : BergmanKernelPackage A)
    (M : BergmanMetricPackage A K) where
  hermitianClosed : M.hermitian
  positiveDefiniteClosed : M.positiveDefinite
  kaehlerClosed : M.kaehler
  completenessClosed : M.completeness

def BergmanMetricClosed (A : AdmissibleClass) (K : BergmanKernelPackage A)
    (M : BergmanMetricPackage A K) : Prop :=
  M.hermitian ∧ M.positiveDefinite ∧ M.kaehler ∧ M.completeness

theorem bergman_metric_closed_from_evidence (A : AdmissibleClass)
    (K : BergmanKernelPackage A) (M : BergmanMetricPackage A K)
    (E : BergmanMetricEvidence A K M) : BergmanMetricClosed A K M := by
  exact And.intro E.hermitianClosed
    (And.intro E.positiveDefiniteClosed
      (And.intro E.kaehlerClosed E.completenessClosed))

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse