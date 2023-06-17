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
                    cp target/jenkins-demo-0.0.1-SNAPSHOT.jar /home/ren/tools/jenkins/deploy
                    cp bin/start.sh /home/ren/tools/jenkins/deploy
                    echo "Deployed"
                '''
            }
        }

        stage('Start') {
            steps {
                sh '''
                    cd /home/ren/tools/jenkins/deploy
                    sh start.sh
                '''
            }
        }
    }
}