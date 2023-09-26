// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab-lab/KMMBridgeKickStartSKIE/co/touchlab/kmmbridgekickstartskie/allshared-kmmbridge/0.4.15/allshared-kmmbridge-0.4.15.zip"
let remoteKotlinChecksum = "2a9799f0ea00f5deff93e546e79c0e46f2117e1aef02172ceeafbf72ca8056bd"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)