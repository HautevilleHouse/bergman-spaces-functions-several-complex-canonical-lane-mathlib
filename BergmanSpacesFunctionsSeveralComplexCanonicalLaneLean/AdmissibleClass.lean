import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanDomain
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanKernel
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanMetric
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.WeightedBergmanSpaces
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanProjection

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanAdmittedObject where
  domain : BergmanDomain
  domainClosed : BergmanDomainClosed domain
  kernel : BergmanKernelPackage domain
  kernelClosed : BergmanKernelClosed kernel
  metric : BergmanMetricPackage kernel
  metricClosed : BergmanMetricClosed metric
  weighted : WeightedBergmanSpacePackage domain
  weightedClosed : WeightedBergmanSpaceClosed weighted
  projection : BergmanProjectionPackage kernel
  projectionClosed : BergmanProjectionClosed projection

structure AdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanDomainClosed A.object.domain ∧ BergmanKernelClosed A.object.kernel ∧
  BergmanMetricClosed A.object.metric ∧ WeightedBergmanSpaceClosed A.object.weighted ∧
  BergmanProjectionClosed A.object.projection ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse