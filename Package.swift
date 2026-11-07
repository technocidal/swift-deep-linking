// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-deep-linking",
    products: [
        .library(
            name: "DeepLinking",
            targets: ["DeepLinking"]),
    ],
    targets: [
        .target(
            name: "DeepLinking",
            swiftSettings: swiftSettings),
        .testTarget(
            name: "DeepLinkingTests",
            dependencies: ["DeepLinking"],
            swiftSettings: swiftSettings),
    ]
)

var swiftSettings: [SwiftSetting] {
    [
        .swiftLanguageMode(.v6),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("InferIsolatedConformances"),
        .enableUpcomingFeature("ImmutableWeakCaptures"),
    ]
}
