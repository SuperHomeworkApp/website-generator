// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SuperHomeworkWebsite",
    products: [
        .executable(name: "build", targets: ["SuperHomeworkWebsite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Plot", from: "0.5.0"),
        .package(url: "https://github.com/JohnSundell/Files", from: "4.1.0"),
        .package(url: "https://github.com/JohnSundell/Ink", from: "0.2.0"),
    ],
    targets: [
        .target(name: "SuperHomeworkWebsite", dependencies: [
            "Plot",
            "Files",
            "Ink",
        ]),
    ]
)
