import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.SpecialResidueBridge

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

def gateClosed (n : ℕ) (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (n : ℕ) (A : AdmissibleClass) : gateClosed n A := by
  exact A.gateWitness

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse