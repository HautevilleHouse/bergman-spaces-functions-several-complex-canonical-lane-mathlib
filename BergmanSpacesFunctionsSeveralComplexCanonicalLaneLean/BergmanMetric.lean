import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanKernel

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanMetricPackage {Ω : BergmanDomain} (K : BergmanKernelPackage Ω) where
  metricTensor : Ω.space → ℂ
  completeness : Prop
  negativeCurvature : Prop

structure BergmanMetricEvidence {Ω : BergmanDomain} {K : BergmanKernelPackage Ω} (M : BergmanMetricPackage K) where
  completenessClosed : M.completeness
  negativeCurvatureClosed : M.negativeCurvature

def BergmanMetricClosed {Ω : BergmanDomain} {K : BergmanKernelPackage Ω} (M : BergmanMetricPackage K) : Prop :=
  M.completeness ∧ M.negativeCurvature

theorem bergman_metric_closed_from_evidence {Ω : BergmanDomain} {K : BergmanKernelPackage Ω} (M : BergmanMetricPackage K) (E : BergmanMetricEvidence M) :
    BergmanMetricClosed M := by
  exact And.intro E.completenessClosed E.negativeCurvatureClosed

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse