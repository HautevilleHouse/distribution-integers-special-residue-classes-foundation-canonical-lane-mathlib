import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure DistributionIntegersFoundation where
  targetModulus : ℕ
  specialResidueClass : ℕ
  quantificationType : Prop
  densityEstimate : ℝ

structure DistributionIntegersFoundationEvidence (D : DistributionIntegersFoundation) where
  targetModulusClosed : D.targetModulus > 1
  specialResidueClassClosed : D.specialResidueClass < D.targetModulus
  quantificationTypeClosed : D.quantificationType
  densityEstimateClosed : D.densityEstimate ≥ 0

def DistributionIntegersFoundationClosed (D : DistributionIntegersFoundation) : Prop :=
  D.targetModulus > 1 ∧ D.specialResidueClass < D.targetModulus ∧
  D.quantificationType ∧ D.densityEstimate ≥ 0

theorem distribution_integers_foundation_closed_from_evidence
    (D : DistributionIntegersFoundation) (E : DistributionIntegersFoundationEvidence D) :
    DistributionIntegersFoundationClosed D := by
  exact And.intro E.targetModulusClosed
    (And.intro E.specialResidueClassClosed
      (And.intro E.quantificationTypeClosed E.densityEstimateClosed))

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse
