pipeline { 
node('maven') {
  stage('Build') {
    git url: "https://github.com/buuhsmead/ocp-team.git"
    sh "mvn package"
  }
}
}
