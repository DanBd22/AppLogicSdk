// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppLogicSDK",
    platforms: [
        .iOS(.v14) // Укажите минимальные версии платформ
    ], products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AppLogicSDK",
            targets: ["AppLogicSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework-Static", from: "6.15.3"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AppLogicSDK",
            dependencies: [
                .product(name: "AppsFlyerLib-Static", package: "AppsFlyerFramework-Static"),
                .product(name: "Alamofire", package: "Alamofire"),
            ]),
        .testTarget(
            name: "AppLogicSDKTests",
            dependencies: ["AppLogicSDK"]),
    ]
)
