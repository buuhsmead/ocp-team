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
      def commit_id = readFile('.git/commit-id')
      steps {
        openshiftTag(destTag: "test:latest,test:${commit_id}", srcStream: 'ocp-team', srcTag: 'ocp-team', destStream: 'ocp-team')
      }
    }
  }
}