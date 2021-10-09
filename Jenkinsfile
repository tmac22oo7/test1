pipeline {
    environment{
        DOCKERHUB_CREDENTIALS = credentials('tsanderson77-dockerhub')
 
    }
    stages {
        stage ('Build') {
            steps {
                sh 'docker build -t tsanderson77/jenkins:v1.0 .'
 
 
            }
        }
         stage ('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
 
 
            }
        }
         stage ('Push') {
            steps {
                sh 'docker push tsanderson77/jenkins:v1.0'
 
 
            }
        }
    }
}
