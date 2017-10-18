pipeline {
  agent {
    docker {
      image 'maven'
      args '3.3.3'
    }
    
  }
  stages {
    stage('Checkout') {
      steps {
        checkout(scm: scm, poll: true)
      }
    }
    stage('Build') {
      steps {
        readMavenPom(file: 'pom.xml')
        sh 'mvn --version'
      }
    }
  }
}