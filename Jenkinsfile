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
                    cp target/jenkins-demo-0.0.1-SNAPSHOT.jar /home/ren/tools/jenkins/deploy
                    cd /home/ren/tools/jenkins/deploy
                    JENKINS_NODE_COOKIE=dontKillMe
                    nohup java -jar jenkins-demo-0.0.1-SNAPSHOT.jar > nohup.out 2>&1 &
                    sleep 5
                    echo "Deployed"
                '''
            }
        }
    }
}