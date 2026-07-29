import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean.ResidueClassStructure

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean

structure SpecialCongruenceEmbedding {R : ResidueClassStructure} where
  targetStructure : ResidueClassStructure
  embeddingMap : ℤ → ℤ
  respectsModulus : Prop
  respectsAddition : Prop
  respectsMultiplication : Prop
  respectsModulusTerm : respectsModulus
  respectsAdditionTerm : respectsAddition
  respectsMultiplicationTerm : respectsMultiplication

structure SpecialCongruenceEmbeddingEvidence {R : ResidueClassStructure}
    (S : SpecialCongruenceEmbedding R) where
  respectsModulusClosed : S.respectsModulus
  respectsAdditionClosed : S.respectsAddition
  respectsMultiplicationClosed : S.respectsMultiplication

def SpecialCongruenceEmbeddingClosed {R : ResidueClassStructure}
    (S : SpecialCongruenceEmbedding R) : Prop :=
  S.respectsModulus ∧ S.respectsAddition ∧ S.respectsMultiplication

theorem special_congruence_embedding_closed_from_evidence
    {R : ResidueClassStructure} (S : SpecialCongruenceEmbedding R)
    (E : SpecialCongruenceEmbeddingEvidence S) : SpecialCongruenceEmbeddingClosed S := by
  exact And.intro E.respectsModulusClosed
    (And.intro E.respectsAdditionClosed E.respectsMultiplicationClosed)

end DistributionIntegersSpecialResidueClassesFoundationCanonicalLaneLean
end HautevilleHouse