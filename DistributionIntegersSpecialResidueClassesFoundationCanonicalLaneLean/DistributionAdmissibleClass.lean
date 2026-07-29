import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundation

structure DistributionAdmittedObject where
  modulus : ℕ
  residueClass : ℕ
  residueCondition : residueClass < modulus
  distributionProperty : Prop

structure DistributionAdmissibleClass where
  object : DistributionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def distributionAdmittedClosure (A : DistributionAdmissibleClass) : Prop :=
  (A.object.distributionProperty) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionIntegersSpecialResidueClassesFoundation
end HautevilleHouse