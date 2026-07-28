import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanAdmittedObject where
  domain : Type
  complexDimension : Nat
  bergmanKernelReproducing : Prop
  conclusion : bergmanKernelReproducing

structure BergmanAdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.bergmanKernelReproducing

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse