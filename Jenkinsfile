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
        git(url: 'https://github.com/buuhsmead/ocp-team.git', branch: 'master')
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