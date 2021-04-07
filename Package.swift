// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PowerAuth",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PowerAuth2",
            targets: ["PowerAuth2"]),
        .library(
            name: "PowerAuth2ForExtensions",
            targets: ["PowerAuth2ForExtensions"]),
        .library(
            name: "PowerAuth2ForWatch",
            targets: ["PowerAuth2ForWatch"]),
        .library(
            name: "WultraSSLPinning",
            targets: ["WultraSSLPinning"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "PowerAuth2", path: "Sources/PowerAuth2.xcframework"),
        .binaryTarget(name: "PowerAuth2ForExtensions", path: "Sources/PowerAuth2ForExtensions.xcframework"),
        .binaryTarget(name: "PowerAuth2ForWatch", path: "Sources/PowerAuth2ForWatch.xcframework"),
        .binaryTarget(name: "WultraSSLPinning", path: "Sources/WultraSSLPinning.xcframework"),        
    ]
)
