import org.jetbrains.kotlin.gradle.plugin.mpp.Framework

@Suppress("DSL_SCOPE_VIOLATION")
plugins {
    kotlin("multiplatform")
    id("co.touchlab.faktory.kmmbridge")
    id("co.touchlab.skie")
    `maven-publish`
}

kotlin {
    val frameworkConfigure: Framework.() -> Unit = {
        // Getting some kind of Gradle error
//            export(project(":analytics"))
        isStatic = true
    }

    ios {
        binaries.framework(configure = frameworkConfigure)
    }

    iosSimulatorArm64 {
        binaries.framework(configure = frameworkConfigure)
    }

    sourceSets {
        val commonMain by getting {
            dependencies {
                implementation(project(":breeds"))
                api(project(":analytics"))
            }
        }
        val commonTest by getting {
            dependencies {
                implementation(libs.bundles.shared.commonTest)
            }
        }
        val iosMain by getting
        val iosTest by getting
        val iosSimulatorArm64Main by getting {
            dependsOn(iosMain)
        }
        val iosSimulatorArm64Test by getting {
            dependsOn(iosTest)
        }
    }
}

addGithubPackagesRepository()

kmmbridge {
    mavenPublishArtifacts()
    githubReleaseVersions()
//    Android version is not automatically incremented in KMMBridge, so if you need it to be aligned with the iOS version
//    use manualVersions instead of githubReleaseVersions to set version manually
//    manualVersions()
    spm()
//    cocoapods("git@github.com:touchlab/PodSpecs.git")
}
