// swift-tools-version: 5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WSNetworking",
    // Platform version was removed due to Github actions builds failure
//    platforms: [
//        .iOS(.v15)
//    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WSNetworking",
            targets: ["WSNetworking"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "WSNetworking",
            path: "WSNetworking/Sources/WSNetworking"),
        .testTarget(
            name: "WSNetworkingTests",
            dependencies: ["WSNetworking"],
            path: "WSNetworking/Tests/WSNetworkingTests"),
    ]
)
