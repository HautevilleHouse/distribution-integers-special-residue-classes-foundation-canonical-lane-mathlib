import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.SpecialCongruenceEmbedding

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure DistributionLawPackage {R : ResidueClassStructure}
    {S : SpecialCongruenceEmbedding R} where
  asymptoticDensity : Prop
  discrepancyBound : Prop
  equidistributionClaim : Prop
  asymptoticDensityTerm : asymptoticDensity
  discrepancyBoundTerm : discrepancyBound
  equidistributionClaimTerm : equidistributionClaim

structure DistributionLawEvidence {R : ResidueClassStructure}
    {S : SpecialCongruenceEmbedding R}
    (D : DistributionLawPackage S) where
  asymptoticDensityClosed : D.asymptoticDensity
  discrepancyBoundClosed : D.discrepancyBound
  equidistributionClaimClosed : D.equidistributionClaim

def DistributionLawClosed {R : ResidueClassStructure}
    {S : SpecialCongruenceEmbedding R}
    (D : DistributionLawPackage S) : Prop :=
  D.asymptoticDensity ∧ D.discrepancyBound ∧ D.equidistributionClaim

theorem distribution_law_closed_from_evidence
    {R : ResidueClassStructure} {S : SpecialCongruenceEmbedding R}
    (D : DistributionLawPackage S) (E : DistributionLawEvidence D) :
    DistributionLawClosed D := by
  exact And.intro E.asymptoticDensityClosed
    (And.intro E.discrepancyBoundClosed E.equidistributionClaimClosed)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse