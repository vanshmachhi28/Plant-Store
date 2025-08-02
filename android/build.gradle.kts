// Top-of-file imports
import org.gradle.api.tasks.Delete

plugins {}

// Set repository sources
allprojects {
  repositories {
    google()
    mavenCentral()
  }
}

// Configure root build output
rootProject.layout.buildDirectory.set(
  rootProject.layout.buildDirectory.dir("../build")
)

// Configure each module subproject
subprojects {
  layout.buildDirectory.set(
    rootProject.layout.buildDirectory.dir(project.name)
  )
  evaluationDependsOn(":app")
}

// Override clean task to use new build directory:
tasks.register<Delete>("clean") {
  delete(rootProject.layout.buildDirectory)
}
