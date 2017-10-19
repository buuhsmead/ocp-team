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
        openshiftDeploy(depCfg: 'ocp-team', verbose: 'true')
      }
    }
    stage('Promote2Test') {
      steps {
        sh 'commit_id = readFile(\'.git/commit-id\')'
        openshiftTag(destTag: 'test:latest,test:${commit_id}', srcStream: 'ocp-team', srcTag: 'ocp-team', destStream: 'ocp-team')
      }
    }
  }
}