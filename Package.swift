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
                "WebRTC"
            ]
        ),
        .binaryTarget(name: "LASDKiOS", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/lasdk/LASDKiOS-2.0.0-beta8.xcframework.zip", checksum: "dcd1b968d63a2527807efa7b6896432f1831d006e3398d242ef3a344f749c4cd"),
        .binaryTarget(name: "WebRTC", url: "https://swift-sdk.s3.us-east-2.amazonaws.com/real_time/WebRTC-m117.xcframework.zip", checksum: "7950151686d41d8fc33e69a9ad5bd47cad24d20691b4167e9fa4d8d156a8fca6")
    ]
)
