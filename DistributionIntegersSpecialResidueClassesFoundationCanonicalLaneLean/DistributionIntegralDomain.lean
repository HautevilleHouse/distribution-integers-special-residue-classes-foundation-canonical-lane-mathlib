import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.ResidueClassStructure

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure DistributionIntegralDomain (n : ℕ) where
  modulus : ℕ
  residueSystem : ResidueClass n
  completeness : Prop
  completenessClosed : completeness

def DistributionIntegralDomainClosed (n : ℕ) (D : DistributionIntegralDomain n) : Prop :=
  D.completeness ∧ ResidueClassClosed n D.residueSystem

theorem distribution_integral_domain_closed_from_evidence (n : ℕ) (D : DistributionIntegralDomain n) (hcomp : D.completenessClosed) (hres : ResidueClassClosed n D.residueSystem) : DistributionIntegralDomainClosed n D := by
  exact And.intro hcomp hres

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse