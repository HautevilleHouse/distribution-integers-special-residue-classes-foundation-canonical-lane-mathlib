import DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse