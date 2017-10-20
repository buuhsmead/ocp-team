#!groovy

node('maven') {

    stage('Checkout Source') {

    checkout scm
  }


  def pom = readMavenPom file: 'pom.xml'
  def version = pom.version


    stage('Build') {
      openshiftBuild 'ocp-team'
    }

    stage('Deploy') {
      openshiftDeploy('ocp-team' )
    }

    stage('Promote2Test') {
      openshiftTag(destTag: "${version}", destStream: 'ocp-team', srcTag: 'latest', srcStream: 'ocp-team')
    }

}
