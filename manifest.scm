(define-module (manifest)
  #:use-module (guix packages)
  #:use-module (gnu packages))

(specifications->manifest
 (list "tree-sitter"
       "gcc-toolchain"
       "node"
       "rust"))
