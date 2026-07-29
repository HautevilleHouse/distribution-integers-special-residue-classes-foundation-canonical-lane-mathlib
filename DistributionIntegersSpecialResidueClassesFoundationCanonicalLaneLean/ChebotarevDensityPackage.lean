import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundation.ArtinReciprocityPackage

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundation

structure ChebotarevDensityPackage {P : PrimePowerResiduePackage} (A : ArtinReciprocityPackage P) where
  naturalDensity : Prop
  dirichletDensity : Prop
  distributionPropertyDerived : Prop
  densityFromArtin : Prop

end DistributionIntegersSpecialResidueClassesFoundation
end HautevilleHouse