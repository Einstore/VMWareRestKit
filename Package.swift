// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "VMWareRunKit",
    products: [
        .library(name: "VMWareRunKit", targets: ["VMWareRestKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.3.0"),
        .package(url: "https://github.com/vapor/swift-nio-http-client.git", from: "0.0.0")
    ],
    targets: [
        .target(
            name: "VMWareRestKit",
            dependencies: [
                "NIO",
                "NIOHTTPClient"
            ]
        )
    ]
)


