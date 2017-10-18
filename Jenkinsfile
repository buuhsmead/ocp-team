pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Build') {
      steps {
        readMavenPom(file: 'pom.xml')
      }
    }
  }
}