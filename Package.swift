// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-lasdk-ios",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "LASDKiOS",
            type: .static,
            targets: ["SwiftLASDKiOS"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftLASDKiOS",
            dependencies: [
                "LASDKiOS",
                "FCSDKiOS",
                "CBARealTime"
            ]
        ),
        .binaryTarget(name: "LASDKiOS", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/lasdk/LASDKiOS-2.0.0.xcframework.zip", checksum: "8b54aa6885c116a2e12bda636af8b63a6a815bbddb1d19aeda07080a7a07a0ec"),
        .binaryTarget(name: "FCSDKiOS", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/client_sdk/FCSDKiOS-4.2.2.xcframework.zip", checksum: "58f164fcd070715e04d3da5211369eda116e03c508a7136469b618caab0343f9"),
        .binaryTarget(name: "CBARealTime", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/CBARealTime-m110-1.0.0.xcframework.zip", checksum: "a2f4cee24ce4389aa00feb86edd8dc8c67a43aedf1f8b4ceb5998c94f16a5e3d")
    ]
)
