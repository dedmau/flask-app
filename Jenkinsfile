pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh "docker-compose up --build -d"
              
                echo "Build by Jenkins Build# $BUILD_ID"
            }
        }
        stage('Deploy') {
            steps {
                sh "curl localhost:8090"
            }
        }
    }
}
