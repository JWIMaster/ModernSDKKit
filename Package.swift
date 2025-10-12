// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "ModernSDKKit",
    platforms: [
        .iOS("7.0")
    ],
    products: [
        .library(
            name: "ModernSDKKit",
            targets: ["ModernSDKKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/JWIMaster/SFSymbolsCompatKit.git", branch: "master"),
        .package(url: "https://github.com/JWIMaster/FoundationCompatKit.git", branch: "master"),
        .package(url: "https://github.com/JWIMaster/UIKitCompatKit.git", branch: "master"),
        .package(url: "https://github.com/JWIMaster/GPUImage1Swift.git", branch: "master")
    ],
    targets: [
        .target(
            name: "ModernSDKKit",
            dependencies: [
                .product(name: "SFSymbolsCompatKit", package: "SFSymbolsCompatKit"),
                .product(name: "FoundationCompatKit", package: "FoundationCompatKit"),
                .product(name: "UIKitCompatKit", package: "UIKitCompatKit"),
                .product(name: "GPUImage1Swift", package: "GPUImage1Swift")
            ],
            path: "Sources/ModernSDKKit"
        ),
        .testTarget(
            name: "ModernSDKKitTests",
            dependencies: ["ModernSDKKit"]
        ),
    ]
)
