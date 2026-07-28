import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanSpace

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure HarmonicAnalysisPackage (Ω : Type*) [TopologicalSpace Ω] (B : BergmanSpace Ω) where
  laplacian : Type u
  harmonicFunctions : Type v
  poissonKernel : Type w
  dirichletProblem : Prop
  regularity : Prop

structure HarmonicAnalysisEvidence {Ω : Type*} [TopologicalSpace Ω] {B : BergmanSpace Ω}
    (H : HarmonicAnalysisPackage Ω B) where
  dirichletProblemClosed : H.dirichletProblem
  regularityClosed : H.regularity

def HarmonicAnalysisClosed {Ω : Type*} [TopologicalSpace Ω] {B : BergmanSpace Ω}
    (H : HarmonicAnalysisPackage Ω B) : Prop :=
  H.dirichletProblem ∧ H.regularity

theorem harmonic_analysis_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] {B : BergmanSpace Ω}
    (H : HarmonicAnalysisPackage Ω B) (E : HarmonicAnalysisEvidence H) :
    HarmonicAnalysisClosed H := by
  exact And.intro E.dirichletProblemClosed E.regularityClosed

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse