// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab-lab/KMMBridgeKickStartSKIE/co/touchlab/kmmbridgekickstartskie/allshared-kmmbridge/0.4.7/allshared-kmmbridge-0.4.7.zip"
let remoteKotlinChecksum = "c63da9db82ee289953f66f1ec374d7f3d3d84fc58f84b8a641b184f9467273db"
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