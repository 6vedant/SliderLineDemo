// swift-tools-version:5.3

import PackageDescription
import Foundation

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let package = Package(
    name: "ScadeSliderLine",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "ScadeSliderLine",
            type: .static,
            targets: [
                "ScadeSliderLine"
            ]
        )
    ],
    dependencies: [
    .package(name: "ScadeExtensions", url: "https://github.com/6vedant/ScadeExtensions", .branch("main")),
    ],
    targets: [
        .target(
            name: "ScadeSliderLine",
            dependencies: ["ScadeExtensions"],
            exclude: ["main.page"],
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android])),
            ]
        )
    ]
)