


pipeline {
    agent any
    environment {
        // PROJECT_ID = '<projectid>'
        // CLUSTER_NAME = 'jenkins-cd'
        // LOCATION = 'us-central1-a'
        // CREDENTIALS_ID = '< >'
        // dockerImage = "mywebsite"
    }
    stages {
        stage("Checkout code") {
            steps {
              git branch: 'main', url: 'https://github.com/shivam779823/Jenkins-maven-cicd.git'  
            }
        }

        stage("build Jar") {
            steps {
                 sh 'mvn -Dmaven.test.failure.ignore=true install'
            }
        }
        stage("Build image") {
            steps {
                script {
                    dockerImage = docker.build("shiva9921/javaapp")
                }
            }
        }
        stage("Push image") {
            steps{
                sh 'docker run -t javaapp -p 5000:5000 shiva9921/javaapp '
            }
            
        }        
       
    }    
}

