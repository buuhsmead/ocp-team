pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
//        stage('Build') {
//            steps {
//                sh 'make'
//            }
//        }
//        stage('Test'){
//            steps {
//                sh 'make check'
//                junit 'reports/**/*.xml'
//            }
//        }
//        stage('Deploy') {
//            steps {
//                sh 'make publish'
//            }
//        }
    }
}

// push changes
// pull changes
// deploy to repo (maven repo)

// build
// deploy
// promote to test
// ---
// UAT
// Perf
// Prod
