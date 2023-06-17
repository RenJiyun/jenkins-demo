pipeline {
    agent any

    tools {
        maven '3.6.3'
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    echo "Deploying..."
                    nohup java -jar target/jenkins-demo-0.0.1-SNAPSHOT.jar &
                    echo "Deployed"
                '''
            }
        }
    }
}