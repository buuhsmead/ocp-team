
library identifier: 'github.com/fabric8io/fabric8-pipeline-library@master', retriever: modernSCM()

node('maven') {


    stage('Checkout Source') {
        checkout scm
        sh('git rev-parse --short HEAD > .git/commit-id')
    }

    def commit_id = readFile('.git/commit-id').replaceAll("[\r\n]+", "")
    def pom = readMavenPom file: 'pom.xml'
    def version = pom.version
    version = version.replace('-SNAPSHOT', "-${commit_id}")

    echo("Going to use as version/tag [${version}].")
    version = getNewVersion{}
    echo("Going to use as version/tag [${version}].")


    stage('Build') {
        openshiftBuild 'ocp-team'
    }

    stage('Deploy') {
        openshiftDeploy('ocp-team')
    }

    stage('Promote2Test') {
        openshiftTag(destTag: "${version}", destStream: 'ocp-team', srcTag: 'latest', srcStream: 'ocp-team')

        openshiftTag(destTag: "${version}", destStream: 'ocp-team-test', srcTag: "${version}", srcStream: 'ocp-team')
    }

}
