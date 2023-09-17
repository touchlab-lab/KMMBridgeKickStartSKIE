// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KMMBridgeKickStartSKIE/co/touchlab/kmmbridgekickstartskie/allshared-kmmbridge/0.3.5/allshared-kmmbridge-0.3.5.zip"
let remoteKotlinChecksum = "9e42ef8b3360012d9bed9acec28363e9ddc1146bf25e56e5d70cfc1dca551d24"
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