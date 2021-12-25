def image

pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
              	script {
		     image = docker.build("3l0w/mps:latest")  
		}
            }
        }
        
        stage('Deploy') { 
            steps {
		script {
		    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
                        image.push()
		    }
		}
            }
        }
    }
}
