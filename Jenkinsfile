pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'ls -ltra'
        openshiftBuild 'ocp-team'
      }
    }
  }
}