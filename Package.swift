// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExtApp",
    platforms: [.macOS("10.12"), .iOS("10.0")],
    products: [
        .executable(name: "ExtApp", targets: ["ExtApp"]),
    ],
    dependencies: [
        .package(url: "https://github.com/johnno1962/Extensions.git", .branch("master")),
    ],
    targets: [
        .target(name: "ExtApp", dependencies: ["Extensions"], path: "Sources/"),
    ]
)
