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
  }
}