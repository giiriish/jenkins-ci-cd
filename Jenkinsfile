pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/Vedantatugade/jenkins-cicd.git',
                    credentialsId: 'github-pat'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                // Add your build commands here, e.g., Maven, Gradle, npm
                // sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                echo 'Running automated tests...'
                // Add your test commands here
                // sh 'mvn test' or 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // Example: Deploy to AWS or any staging server
                // sh 'scp target/app.jar user@server:/deploy/path/'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
