// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let firebaseFrameworkNames = [
    "AppAuth",
    "FBLPromises",
    "FirebaseAnalytics",
    "FirebaseAnalyticsSwift",
    "FirebaseAppCheckInterop",
    "FirebaseAuth",
    "FirebaseCore",
    "FirebaseCoreInternal",
    "FirebaseInstallations",
    "GTMAppAuth",
    "GTMSessionFetcher",
    "GoogleAppMeasurement",
    "GoogleSignIn",
    "GoogleUtilities",
    "RecaptchaInterop",
    "nanopb",
]

var firebaseTargets: [Target] {
    firebaseFrameworkNames.map {
        Target.binaryTarget(
            name: $0,
            path: "Firebase-Binaries/\($0).xcframework"
        )
    }
}


let package = Package(
    name: "overtime-dependencies",
    products: [
        .library(
            name: "Firebase",
            targets: firebaseFrameworkNames
        )
    ],
    targets: firebaseTargets
)
