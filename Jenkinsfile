pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'git rev-parse --short HEAD > .git/commit-id'
        openshiftBuild 'ocp-team'
      }
    }
    stage('Deploy') {
      steps {
        openshiftDeploy 'ocp-team'
      }
    }
    stage('Promote2Test') {
      steps {
        openshiftTag(destTag: 'test:latest,test:g${env.GIT_COMMIT}', srcStream: 'ocp-team', srcTag: 'ocp-team', destStream: 'ocp-team')
      }
    }
  }
}