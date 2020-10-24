// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ParseLiveQuery",
    platforms: [.iOS(.v11), .macOS(.v10_13), .tvOS(.v11), .watchOS(.v4)],
    products: [
        .library(
            name: "ParseLiveQuery",
            targets: ["ParseLiveQuery"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/BoltsFramework/Bolts-Swift.git", .branch("master")),
        .package(url: "https://github.com/advatar/Parse-Swift.git", .branch("main")),
        .package(url: "https://github.com/daltoniam/Starscream.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "ParseLiveQuery",
            dependencies: ["Parse","BoltsSwift","Starscream"]),
    ]
)
