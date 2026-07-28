import BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse
