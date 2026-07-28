import BergmanAdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanKernelPackage (B : BergmanAdmittedObject) where
  kernelFunction : Type
  reproducingProperty : Prop
  explicitFormula : Prop
  continuityProperty : Prop

structure BergmanKernelEvidence (B : BergmanAdmittedObject) (K : BergmanKernelPackage B) where
  reproducingPropertyClosed : K.reproducingProperty
  explicitFormulaClosed : K.explicitFormula
  continuityPropertyClosed : K.continuityProperty

def BergmanKernelClosed (B : BergmanAdmittedObject) (K : BergmanKernelPackage B) : Prop :=
  K.reproducingProperty ∧ K.explicitFormula ∧ K.continuityProperty

theorem bergman_kernel_closed_from_evidence (B : BergmanAdmittedObject) (K : BergmanKernelPackage B)
    (E : BergmanKernelEvidence B K) : BergmanKernelClosed B K := by
  exact And.intro E.reproducingPropertyClosed
    (And.intro E.explicitFormulaClosed E.continuityPropertyClosed)

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse