import XCTest
import SwiftTreeSitter
import TreeSitterGcc

final class TreeSitterGccTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_gcc())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading GCC grammar")
    }
}
