import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.LFunctionZeroFreeRegion

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure EndpointClassificationPackage {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : ResidueClassSieveEstimatesPackage S} {Z : LFunctionZeroFreeRegionPackage R}
    (Z2 : LFunctionZeroFreeRegionPackage R) where
  primesInResidueClassAsymptotic : Prop
  chenTheoremBound : Prop
  asymptoticFormulaDerived : Prop
  primesInResidueClassAsymptoticTerm : primesInResidueClassAsymptotic
  chenTheoremBoundTerm : chenTheoremBound
  asymptoticFormulaDerivedTerm : asymptoticFormulaDerived

structure EndpointClassificationEvidence {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : ResidueClassSieveEstimatesPackage S} {Z : LFunctionZeroFreeRegionPackage R}
    {Z2 : LFunctionZeroFreeRegionPackage R} (E : EndpointClassificationPackage Z2) where
  primesInResidueClassAsymptoticClosed : E.primesInResidueClassAsymptotic
  chenTheoremBoundClosed : E.chenTheoremBound
  asymptoticFormulaDerivedClosed : E.asymptoticFormulaDerived

def EndpointClassificationClosed {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : ResidueClassSieveEstimatesPackage S} {Z : LFunctionZeroFreeRegionPackage R}
    {Z2 : LFunctionZeroFreeRegionPackage R} (E : EndpointClassificationPackage Z2) : Prop :=
  E.primesInResidueClassAsymptotic ∧ E.chenTheoremBound ∧ E.asymptoticFormulaDerived

theorem endpoint_classification_closed_from_evidence
    {D : DistributionIntegersFoundation} {F : DistributionIntegersFoundation}
    {S : SpecialResidueClassDensityPackage F} {R : ResidueClassSieveEstimatesPackage S}
    {Z : LFunctionZeroFreeRegionPackage R} {Z2 : LFunctionZeroFreeRegionPackage R}
    (E : EndpointClassificationPackage Z2) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.primesInResidueClassAsymptoticClosed
    (And.intro Ev.chenTheoremBoundClosed Ev.asymptoticFormulaDerivedClosed)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse
