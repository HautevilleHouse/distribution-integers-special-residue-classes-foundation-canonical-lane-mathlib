import DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DistributionIntegersAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DistributionIntegersWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse