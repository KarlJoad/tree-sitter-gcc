/**
 * @file Tree-sitter grammars for GCC Internals, including Machine Description, RTL, GIMPLE, and match.pd files.
 * @author Raven Hallsby <raven@hallsby.com>
 * @license GPL v3.0 or later
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "gcc",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
