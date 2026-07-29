import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.SpecialResidueClassDensity

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure ResidueClassSieveEstimatesPackage {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    (R : SpecialResidueClassDensityPackage F) where
  sieveFunction : ℕ → Prop
  levelOfDistribution : ℕ
  bilinearFormsEstimate : Prop
  typeIIEstimate : Prop
  sieveFunctionClosed : sieveFunction 1 = True
  levelOfDistributionClosed : levelOfDistribution ≥ 1
  bilinearFormsEstimateTerm : bilinearFormsEstimate
  typeIIEstimateTerm : typeIIEstimate

structure ResidueClassSieveEstimatesEvidence {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : SpecialResidueClassDensityPackage F} (E : ResidueClassSieveEstimatesPackage R) where
  sieveFunctionClosed : E.sieveFunction 1 = True
  bilinearFormsEstimateClosed : E.bilinearFormsEstimate
  typeIIEstimateClosed : E.typeIIEstimate

def ResidueClassSieveEstimatesClosed {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} {S : SpecialResidueClassDensityPackage F}
    {R : SpecialResidueClassDensityPackage F} (E : ResidueClassSieveEstimatesPackage R) : Prop :=
  E.bilinearFormsEstimate ∧ E.typeIIEstimate

theorem residue_class_sieve_estimates_closed_from_evidence
    {D : DistributionIntegersFoundation} {F : DistributionIntegersFoundation}
    {S : SpecialResidueClassDensityPackage F} {R : SpecialResidueClassDensityPackage F}
    (E : ResidueClassSieveEstimatesPackage R) (Ev : ResidueClassSieveEstimatesEvidence E) :
    ResidueClassSieveEstimatesClosed E := by
  exact And.intro Ev.bilinearFormsEstimateClosed Ev.typeIIEstimateClosed

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse
