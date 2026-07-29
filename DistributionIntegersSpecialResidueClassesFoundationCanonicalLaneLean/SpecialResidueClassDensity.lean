import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.DistributionIntegersFoundation

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure SpecialResidueClassDensityPackage {D : DistributionIntegersFoundation}
    (F : DistributionIntegersFoundation) where
  analyticEstimates : ℕ → ℕ
  densityFunction : ℕ → ℝ
  asymptoticFormula : Prop
  errorTermBound : Prop
  densityFunctionDefined : ∀ n, densityFunction n ≥ 0
  asymptoticFormulaTerm : asymptoticFormula
  errorTermBoundTerm : errorTermBound

structure SpecialResidueClassDensityEvidence {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} (S : SpecialResidueClassDensityPackage F) where
  analyticEstimatesClosed : Prop
  densityFunctionClosed : Prop
  asymptoticFormulaClosed : S.asymptoticFormula
  errorTermBoundClosed : S.errorTermBound

def SpecialResidueClassDensityClosed {D : DistributionIntegersFoundation}
    {F : DistributionIntegersFoundation} (S : SpecialResidueClassDensityPackage F) : Prop :=
  S.asymptoticFormula ∧ S.errorTermBound

theorem special_residue_class_density_closed_from_evidence
    {D : DistributionIntegersFoundation} {F : DistributionIntegersFoundation}
    (S : SpecialResidueClassDensityPackage F) (E : SpecialResidueClassDensityEvidence S) :
    SpecialResidueClassDensityClosed S := by
  exact And.intro E.asymptoticFormulaClosed E.errorTermBoundClosed

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse
