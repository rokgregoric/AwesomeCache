// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "AwesomeCache",
    platforms: [
        .iOS("8.0"),
        .tvOS("9.0"),
        .watchOS("3.0")
    ],
    products: [
        .library(
            name: "AwesomeCache",
            targets: ["AwesomeCache"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AwesomeCache",
            dependencies: ["NSKeyedUnarchiverWrapper"],
            path: "AwesomeCache",
            sources: ["Cache.swift", "CacheObject.swift"],
            publicHeadersPath: ""
        ),
        .target(
            name: "NSKeyedUnarchiverWrapper",
            dependencies: [],
            path: "AwesomeCache",
            sources: ["NSKeyedUnarchiverWrapper.h", "NSKeyedUnarchiverWrapper.m"],
            publicHeadersPath: ""
        )
    ],
    swiftLanguageVersions: [.v5]
)
