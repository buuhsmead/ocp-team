

node {
  stage('Build') {
      sh 'git rev-parse --short HEAD > .git/commit-id'
      openshiftBuild 'ocp-team'
  }
  stage('Deploy') {
      openshiftDeploy 'ocp-team'
  }
  stage('Promote2Test') {

        def commit_id = readFile('.git/commit-id')

      openshiftTag(destTag: "test:latest,test:${commit_id}", srcStream: 'ocp-team', srcTag: 'ocp-team', destStream: 'ocp-team')
  }
}
