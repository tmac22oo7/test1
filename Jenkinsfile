pipeline {
   agent any
 
    stages {
        stage ('Build') {
            steps {
                sh 'docker build -t tsanderson77/jenkins:v1.0 .'
 
 
            }
        }
  
         stage ('Push') {
            steps {
                sh 'docker push tsanderson77/jenkins:v1.0'
 
 
            }
        }
    }
}
