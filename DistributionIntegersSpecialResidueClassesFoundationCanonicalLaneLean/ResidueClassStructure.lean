import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure ResidueClassStructure where
  modulus : ℕ
  residueClasses : ℕ → Set ℤ
  partitionProperty : Prop
  closureUnderAdd : Prop
  closureUnderMul : Prop
  partitionPropertyTerm : partitionProperty
  closureUnderAddTerm : closureUnderAdd
  closureUnderMulTerm : closureUnderMul

structure ResidueClassEvidence (R : ResidueClassStructure) where
  partitionPropertyClosed : R.partitionProperty
  closureUnderAddClosed : R.closureUnderAdd
  closureUnderMulClosed : R.closureUnderMul

def ResidueClassClosed (R : ResidueClassStructure) : Prop :=
  R.partitionProperty ∧ R.closureUnderAdd ∧ R.closureUnderMul

theorem residue_class_closed_from_evidence (R : ResidueClassStructure)
    (E : ResidueClassEvidence R) : ResidueClassClosed R := by
  exact And.intro E.partitionPropertyClosed
    (And.intro E.closureUnderAddClosed E.closureUnderMulClosed)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse