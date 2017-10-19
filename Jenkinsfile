pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        openshiftBuild 'buildconfig.yaml'
        sh 'ls -ltra'
      }
    }
  }
}