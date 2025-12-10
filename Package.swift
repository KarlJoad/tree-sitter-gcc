// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterGcc",
    products: [
        .library(name: "TreeSitterGcc", targets: ["TreeSitterGcc"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterGcc",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterGccTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterGcc",
            ],
            path: "bindings/swift/TreeSitterGccTests"
        )
    ],
    cLanguageStandard: .c11
)
