pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'ls -ltra'
        openshiftBuild(bldCfg: 'ocp-team', showBuildLogs: 'true')
      }
    }
    stage('Deploy') {
      steps {
        openshiftDeploy(depCfg: 'ocp-team', verbose: 'true')
      }
    }
    stage('Promote2Test') {
      steps {
        openshiftTag(srcStream: 'ocp-team', srcTag: 'latest', destStream: 'ocp-team', destTag: 'test:latest')
      }
    }
  }
}