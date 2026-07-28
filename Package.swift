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
