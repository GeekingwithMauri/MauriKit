// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MauriKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MauriKit",
            targets: ["MauriKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(name: "SnapshotTesting",
                  url: "https://github.com/pointfreeco/swift-snapshot-testing",
                  from: "1.10.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MauriKit",
            dependencies: []),
        .testTarget(
            name: "MauriKitTests",
            dependencies: ["MauriKit", "SnapshotTesting"]
        ),
    ]
)
