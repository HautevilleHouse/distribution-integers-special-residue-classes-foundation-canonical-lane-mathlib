import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundation.DistributionAdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundation

structure PrimePowerResiduePackage where
  modulus : ℕ
  primeExponent : ℕ
  residueClass : ℕ
  eulerPhiDivides : (Nat.eulerPhi (modulus) % 2 = 0)
  distributionProperty : Prop
  residueClassPrimitiveRoot : Prop

end DistributionIntegersSpecialResidueClassesFoundation
end HautevilleHouse