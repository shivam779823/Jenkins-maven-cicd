



pipeline {
    agent any
     tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }
    stages {
        stage("Checkout code") {
            steps {
              git branch: 'main', url: 'https://github.com/shivam779823/Jenkins-maven-cicd.git'  
            }
        }

        stage("build Jar") {
            steps {
              
                 sh 'mvn -B -DskipTests clean package'
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

