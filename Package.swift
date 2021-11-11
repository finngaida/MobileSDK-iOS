// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SelligentMobileSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SelligentMobileSDK",
            targets: ["SelligentMobileSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SelligentMobileSDK",
            path: "iOS Framework/SelligentMobileSDK.xcframework"
        ),
    ]
)
