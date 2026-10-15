// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "MauriKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MauriKit",
            targets: ["MauriKit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing",
            from: "1.10.0"
        ),
    ],
    targets: [
        // ponytail: pinned to Swift 5 semantics. tools-version 6.0 matches the other
        // packages; it is not a concurrency migration — drop these to adopt Swift 6.
        .target(
            name: "MauriKit",
            dependencies: [],
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
        .testTarget(
            name: "MauriKitTests",
            dependencies: [
                "MauriKit",
                .product(
                    name: "SnapshotTesting",
                    package: "swift-snapshot-testing"
                ),
            ],
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
    ]
)
