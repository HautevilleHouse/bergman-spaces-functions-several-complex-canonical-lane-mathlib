import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.BergmanSpace

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

structure BergmanAdmittedObject where
  domain : Type
  topology : TopologicalSpace domain
  bergmanSpace : BergmanSpace domain
  kernel : BergmanKernel domain bergmanSpace
  projection : BergmanProjection domain kernel
  conclusion : Prop

structure BergmanEndgameState where
  object : BergmanAdmittedObject

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.conclusion

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse