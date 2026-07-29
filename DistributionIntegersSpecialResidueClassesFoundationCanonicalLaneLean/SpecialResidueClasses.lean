import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure ResidueClass (n : ℕ) (r : ℕ) where
  modulus : ℕ
  residue : ℕ
  h_lt : residue < modulus

def classMembers (n : ℕ) (r : ℕ) (h : r < n) : Set ℤ := {x | x % (n : ℤ) = (r : ℤ)}

structure ArithmeticProgression (a d : ℤ) where
  difference : ℤ := d
  initial : ℤ := a
  terms : Set ℤ := {a + k*d | k : ℤ}

structure DirichletCharacter (n : ℕ) where
  conductor : ℕ := n
  isMultiplicative : Prop
  isPeriodic : Prop

structure SpecialResidueClassPackage where
  n : ℕ
  residues : List ℕ
  residuesDistinct : List.Pairwise (· ≠ ·) residues
  eachResidueLTModulus : ∀ r ∈ residues, r < n
  lFunction : DirichletCharacter n
  lFunctionNonPrincipal : Prop
  distributionProperty : Prop

structure SpecialResidueClassEvidence (P : SpecialResidueClassPackage) where
  residuesDistinctClosed : P.residuesDistinct
  eachResidueLTModulusClosed : P.eachResidueLTModulus
  lFunctionNonPrincipalClosed : P.lFunctionNonPrincipal
  distributionPropertyClosed : P.distributionProperty

def SpecialResidueClassClosed (P : SpecialResidueClassPackage) : Prop :=
  P.residuesDistinct ∧ P.eachResidueLTModulus ∧ P.lFunctionNonPrincipal ∧ P.distributionProperty

theorem special_residue_class_closed_from_evidence (P : SpecialResidueClassPackage) (E : SpecialResidueClassEvidence P) : SpecialResidueClassClosed P := by
  exact And.intro E.residuesDistinctClosed (And.intro E.eachResidueLTModulusClosed (And.intro E.lFunctionNonPrincipalClosed E.distributionPropertyClosed))

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse
