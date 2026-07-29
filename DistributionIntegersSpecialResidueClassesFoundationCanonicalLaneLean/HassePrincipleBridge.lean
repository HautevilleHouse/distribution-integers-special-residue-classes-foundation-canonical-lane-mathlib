import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.DistributionLawPackage

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure HassePrinciplePackage {R : ResidueClassStructure}
    {S : SpecialCongruenceEmbedding R}
    {D : DistributionLawPackage S} where
  localGlobalPrinciple : Prop
  solvabilityCriterion : Prop
  counterexampleExcluded : Prop
  localGlobalPrincipleTerm : localGlobalPrinciple
  solvabilityCriterionTerm : solvabilityCriterion
  counterexampleExcludedTerm : counterexampleExcluded

structure HassePrincipleEvidence {R : ResidueClassStructure}
    {S : SpecialCongruenceEmbedding R}
    {D : DistributionLawPackage S}
    (H : HassePrinciplePackage D) where
  localGlobalPrincipleClosed : H.localGlobalPrinciple
  solvabilityCriterionClosed : H.solvabilityCriterion
  counterexampleExcludedClosed : H.counterexampleExcluded

def HassePrincipleClosed {R : ResidueClassStructure}
    {S : SpecialCongruenceEmbedding R}
    {D : DistributionLawPackage S}
    (H : HassePrinciplePackage D) : Prop :=
  H.localGlobalPrinciple ∧ H.solvabilityCriterion ∧ H.counterexampleExcluded

theorem hasse_principle_closed_from_evidence
    {R : ResidueClassStructure} {S : SpecialCongruenceEmbedding R}
    {D : DistributionLawPackage S} (H : HassePrinciplePackage D)
    (E : HassePrincipleEvidence H) : HassePrincipleClosed H := by
  exact And.intro E.localGlobalPrincipleClosed
    (And.intro E.solvabilityCriterionClosed E.counterexampleExcludedClosed)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse