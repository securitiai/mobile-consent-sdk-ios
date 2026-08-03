// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConsentSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ConsentCore",
            targets: ["ConsentCore"]),
        .library(
            name: "ConsentUI",
            targets: ["ConsentUI"]),
    ],
    targets: [
        .binaryTarget(
            name: "ConsentCore",
            path: "./ConsentCore.xcframework"
        ),
        .binaryTarget(
            name: "ConsentUI",
            path: "./ConsentUI.xcframework"
        )
    ]
)
