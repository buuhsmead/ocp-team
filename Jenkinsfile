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
        script {
          def commit_id = readFile('.git/commit-id')
          echo "commit id is ${commit_id}"
        }
        
        openshiftTag(destTag: "test:latest,test:${commit_id}", srcStream: 'ocp-team', srcTag: 'ocp-team', destStream: 'ocp-team')
      }
    }
  }
}