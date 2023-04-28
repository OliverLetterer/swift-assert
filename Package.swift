// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAssert",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9),
    ],
    products: [
        .library(
            name: "SwiftAssert",
            targets: ["SwiftAssert"]
        ),
        .library(
            name: "SwiftAssertMacro",
            targets: ["SwiftAssertMacro"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", branch: "release/5.8"),
    ],
    targets: [
        .target(
            name: "SwiftAssert"
        ),
        .target(
            name: "SwiftAssertMacro",
            dependencies: [
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
                .product(name: "_SwiftSyntaxMacros", package: "swift-syntax"),
            ]
        )
    ]
)
