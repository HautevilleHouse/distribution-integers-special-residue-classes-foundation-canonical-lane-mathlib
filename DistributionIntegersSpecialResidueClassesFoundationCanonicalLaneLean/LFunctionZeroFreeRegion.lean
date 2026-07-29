import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.ResidueClassSieveEstimates

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure LFunctionZeroFreeRegionPackage {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : ResidueClassSieveEstimatesPackage S} (Z : ResidueClassSieveEstimatesPackage S) where
  characterModulus : ℕ
  zeroFreeRegionWidth : ℝ
  deuringHeilbronnPhenomenon : Prop
  exceptionalZero : Prop
  zeroFreeRegionWidthClosed : zeroFreeRegionWidth > 0
  deuringHeilbronnPhenomenonTerm : deuringHeilbronnPhenomenon
  exceptionalZeroTerm : exceptionalZero

structure LFunctionZeroFreeRegionEvidence {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : ResidueClassSieveEstimatesPackage S} {Z : ResidueClassSieveEstimatesPackage S}
    (L : LFunctionZeroFreeRegionPackage Z) where
  zeroFreeRegionWidthClosed : L.zeroFreeRegionWidth > 0
  deuringHeilbronnPhenomenonClosed : L.deuringHeilbronnPhenomenon
  exceptionalZeroClosed : L.exceptionalZero

def LFunctionZeroFreeRegionClosed {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : ResidueClassSieveEstimatesPackage S} {Z : ResidueClassSieveEstimatesPackage S}
    (L : LFunctionZeroFreeRegionPackage Z) : Prop :=
  L.zeroFreeRegionWidth > 0 ∧ L.deuringHeilbronnPhenomenon ∧ L.exceptionalZero

theorem l_function_zero_free_region_closed_from_evidence
    {D : DistributionIntegersFoundation} {F : DistributionIntegersFoundation}
    {S : SpecialResidueClassDensityPackage F} {R : ResidueClassSieveEstimatesPackage S}
    {Z : ResidueClassSieveEstimatesPackage S} (L : LFunctionZeroFreeRegionPackage Z)
    (Ev : LFunctionZeroFreeRegionEvidence L) : LFunctionZeroFreeRegionClosed L := by
  exact And.intro Ev.zeroFreeRegionWidthClosed
    (And.intro Ev.deuringHeilbronnPhenomenonClosed Ev.exceptionalZeroClosed)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse
