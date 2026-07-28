import BergmanAdmissibleClass
import BergmanProjection

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean

def bridgeClosed (A : BergmanAdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object

theorem bridge_from_admissible_class (A : BergmanAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : BergmanAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BergmanAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBergmanClosure (A : BergmanAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bergman_endgame (A : BergmanAdmissibleClass) : ConstrainedBergmanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BergmanSpacesFunctionsSeveralComplexCanonicalLaneLean
end HautevilleHouse