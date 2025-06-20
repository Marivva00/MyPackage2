// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage2",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyPackage2",
            targets: ["MyPackage2"]
        ),
    ],
    dependencies: [
        // Add any external dependencies here, e.g.:
        .package(url: "https://github.com/Marivva00/MyPackage1.git", from: "1.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyPackage2",
            dependencies: ["MyPackage1"]
        )
    ]
)
