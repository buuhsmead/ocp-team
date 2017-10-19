pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'ls -ltra'
        openshiftBuild 'buildconfig.yaml'
      }
    }
  }
}
