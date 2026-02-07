pipeline {
    agent any

    // Auto-trigger: poll GitHub every 1 minute
    triggers {
        pollSCM('H/1 * * * *')  // H/1 = every 1 minute (minimum possible in Jenkins)
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Stop Old Containers') {
            steps {
                // Stop old containers if any, ignore errors
                bat 'docker-compose down'
            }
        }

        stage('Build & Deploy') {
            steps {
                // Build both backend and frontend, start containers
                bat 'docker-compose up -d --build'
            }
        }

        stage('Verify Containers') {
            steps {
                // List running containers
                bat 'docker ps'
            }
        }
    }

    post {
        success {
            echo '✅ CI/CD pipeline executed successfully'
        }
        failure {
            echo '❌ CI/CD pipeline failed'
        }
        always {
            cleanWs()
        }
    }
}
