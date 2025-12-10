package tree_sitter_gcc_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_gcc "github.com/karljoad/tree-sitter.gcc/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_gcc.Language())
	if language == nil {
		t.Errorf("Error loading GCC grammar")
	}
}
