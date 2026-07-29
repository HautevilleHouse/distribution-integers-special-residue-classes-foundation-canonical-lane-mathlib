import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundation.QuadraticResidueBridge

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundation

def gateClosed (A : DistributionAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DistributionAdmissibleClass) : gateClosed A :=
  A.gateWitness

end DistributionIntegersSpecialResidueClassesFoundation
end HautevilleHouse