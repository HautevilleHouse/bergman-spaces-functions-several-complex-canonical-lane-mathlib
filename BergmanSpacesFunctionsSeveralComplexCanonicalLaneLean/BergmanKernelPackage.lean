import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanKernelPackage (A : AdmissibleClass) where
  kernelFunction : A.object.domain → A.object.domain → ℂ
  reproducingProperty : Prop
  holomorphicFirstArgument : Prop
  antiHolomorphicSecondArgument : Prop
  kernelSmoothness : Prop

structure BergmanKernelEvidence (A : AdmissibleClass) (K : BergmanKernelPackage A) where
  reproducingPropertyClosed : K.reproducingProperty
  holomorphicFirstArgumentClosed : K.holomorphicFirstArgument
  antiHolomorphicSecondArgumentClosed : K.antiHolomorphicSecondArgument
  kernelSmoothnessClosed : K.kernelSmoothness

def BergmanKernelClosed (A : AdmissibleClass) (K : BergmanKernelPackage A) : Prop :=
  K.reproducingProperty ∧ K.holomorphicFirstArgument ∧
  K.antiHolomorphicSecondArgument ∧ K.kernelSmoothness

theorem bergman_kernel_closed_from_evidence (A : AdmissibleClass) 
    (K : BergmanKernelPackage A) (E : BergmanKernelEvidence A K) :
    BergmanKernelClosed A K := by
  exact And.intro E.reproducingPropertyClosed
    (And.intro E.holomorphicFirstArgumentClosed
      (And.intro E.antiHolomorphicSecondArgumentClosed E.kernelSmoothnessClosed))

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse