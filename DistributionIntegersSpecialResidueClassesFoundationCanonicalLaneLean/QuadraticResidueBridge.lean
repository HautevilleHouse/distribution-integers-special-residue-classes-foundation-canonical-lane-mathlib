import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundation.DistributionAdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundation

def bridgeClosed (A : DistributionAdmissibleClass) : Prop :=
  A.object.distributionProperty

theorem bridge_from_admissible_class (A : DistributionAdmissibleClass) : bridgeClosed A :=
  A.object.distributionProperty

end DistributionIntegersSpecialResidueClassesFoundation
end HautevilleHouse