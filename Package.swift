// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOSJetpack",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "iOSJetpack",
            targets: ["iOSJetpack"]),
    ],
    dependencies: [
        // Hero
        .package(url: "https://github.com/HeroTransitions/Hero.git", .upToNextMajor(from: "1.4.0")),
        // Kingfisher
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.0.0")),
        // Moya
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0")),
        // DeviceKit
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "4.0.0"),
        // CryptoSwift
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.4.2")),
        // SwiftyJSON
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0"),
        // SwifterSwift Extensions
        .package(url: "https://github.com/SwifterSwift/SwifterSwift.git", .upToNextMajor(from: "5.0.0")),
        // Realm Database
        .package(url: "https://github.com/realm/realm-swift.git", .upToNextMajor(from: "10.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "iOSJetpack",
            dependencies: [
                "SwifterSwift"
            ]),
        .testTarget(
            name: "iOSJetpackTests",
            dependencies: ["iOSJetpack"]),
    ]
)
