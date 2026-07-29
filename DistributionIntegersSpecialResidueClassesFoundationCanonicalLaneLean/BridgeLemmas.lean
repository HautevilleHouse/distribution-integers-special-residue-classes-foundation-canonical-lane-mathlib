import DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistributionIntegersWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse