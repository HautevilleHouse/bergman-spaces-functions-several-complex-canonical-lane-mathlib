import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplex

structure BergmanSpace (n : ℕ) where
  Ω : Set ℂⁿ
  boundedSymmetric : Prop
  reproducingKernel : ℂⁿ → ℂⁿ → ℂ
  kernelSquareIntegrable : ∀ w ∈ Ω, (∫ z in Ω, |reproducingKernel z w|² dz) < ∞
  kernelReproducing : ∀ f ∈ L² (Ω), ∀ w ∈ Ω, f w = ∫ z in Ω, f z * reproducingKernel z w dz

def BergmanSpaceA² (B : BergmanSpace n) : Set (ℂⁿ → ℂ) :=
  { f : ℂⁿ → ℂ | f ∈ L² B.Ω ∧ HolomorphicOn f B.Ω }

structure BergmanAdmittedObject where
  space : BergmanSpace n
  domainSmooth : Prop
  dimension : n = n
  kernelClosedForm : Prop
  conclusion : kernelClosedForm

end BergmanSpacesFunctionsSeveralComplex
end HautevilleHouse