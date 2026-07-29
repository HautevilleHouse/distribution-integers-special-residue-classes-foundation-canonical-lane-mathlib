import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundation.PrimePowerResiduePackage

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundation

structure ArtinReciprocityPackage (P : PrimePowerResiduePackage) where
  modulus : ℕ := P.modulus
  reciprocityMorphismDefined : Prop
  frobeniusElementMapping : Prop
  distributionCompatibility : Prop

end DistributionIntegersSpecialResidueClassesFoundation
end HautevilleHouse