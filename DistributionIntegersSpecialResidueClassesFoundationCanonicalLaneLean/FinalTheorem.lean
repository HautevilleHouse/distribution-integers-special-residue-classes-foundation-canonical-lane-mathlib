import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.DistributionIntegersBridge

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

def ConstrainedDistributionIntegersClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_integers_endgame (A : AdmissibleClass) : ConstrainedDistributionIntegersClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse
