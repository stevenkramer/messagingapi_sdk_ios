// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskMessagingAPISDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "ZendeskMessagingAPISDK",
            targets: [
              "ZendeskMessagingAPISDKTargets"
            ]
        )
    ],
    dependencies: [
        .package(name: "ZendeskSDKConfigurationsSDK",
                 url: "https://github.com/stevenkramer/sdkconfigurations_sdk_ios",
                 .exact("1.1.10"))
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskMessagingAPISDK",
            path: "ZendeskMessagingAPISDK.xcframework"
        ),
        .target(name: "ZendeskMessagingAPISDKTargets",
                dependencies: [
                    .target(name: "ZendeskMessagingAPISDK"),
                    .product(name: "ZendeskSDKConfigurationsSDK", package: "ZendeskSDKConfigurationsSDK")
                ],
                path: "Sources"
        )
    ]
)
