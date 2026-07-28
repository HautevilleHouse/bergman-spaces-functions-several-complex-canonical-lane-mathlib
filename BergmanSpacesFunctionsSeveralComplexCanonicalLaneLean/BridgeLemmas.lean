import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanDomainClosed A.object.domain ∧ BergmanKernelClosed A.object.kernel ∧
  BergmanMetricClosed A.object.metric ∧ WeightedBergmanSpaceClosed A.object.weighted ∧
  BergmanProjectionClosed A.object.projection

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h1 : BergmanDomainClosed A.object.domain := A.object.domainClosed
  have h2 : BergmanKernelClosed A.object.kernel := A.object.kernelClosed
  have h3 : BergmanMetricClosed A.object.metric := A.object.metricClosed
  have h4 : WeightedBergmanSpaceClosed A.object.weighted := A.object.weightedClosed
  have h5 : BergmanProjectionClosed A.object.projection := A.object.projectionClosed
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse