pipeline {
    agent any
    tools {
        nodejs "node-14-15"
    }
    stages {
        stage("run frontend") {
            steps {
                sh "yarn install"
            }
        }
    }
}