pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/buuhsmead/ocp-team.git'
        echo 'checkout is done'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn --version'
        sh 'ls -latr'
      }
    }
  }
}