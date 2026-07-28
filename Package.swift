// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConsentSDK",
    platforms: [
        .iOS(.v15),
        .tvOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ConsentCore",
            targets: ["ConsentCore"]),
        .library(
            name: "ConsentUI",
            targets: ["ConsentUI"]),
        .library(
            name: "ConsentCore-tvOS",
            targets: ["ConsentCore-tvOS"]),
        .library(
            name: "ConsentUI-tvOS",
            targets: ["ConsentUI-tvOS"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "ConsentCore",
            path: "./ConsentCore.xcframework"
        ),
        .binaryTarget(
            name: "ConsentUI",
            path: "./ConsentUI.xcframework"
        ),
        .binaryTarget(
            name: "ConsentCore-tvOS",
            path: "./ConsentCore-tvOS.xcframework"
        ),
        .binaryTarget(
            name: "ConsentUI-tvOS",
            path: "./ConsentUI-tvOS.xcframework"
        )
    ]
)
