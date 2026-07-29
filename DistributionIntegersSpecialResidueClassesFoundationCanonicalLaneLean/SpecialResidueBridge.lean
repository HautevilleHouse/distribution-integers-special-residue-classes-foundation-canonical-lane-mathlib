import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.DistributionIntegralDomain

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

def bridgeClosed (n : ℕ) (D : DistributionIntegralDomain n) : Prop :=
  DistributionIntegralDomainClosed n D

theorem bridge_from_distribution_integral_domain (n : ℕ) (D : DistributionIntegralDomain n) (hcl : DistributionIntegralDomainClosed n D) : bridgeClosed n D := by
  exact hcl

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse