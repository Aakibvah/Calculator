pipeline{
    agent any
    tools{
        maven "MAVEN"
    }
    stages{
        stage("build stage"){
            steps{
                echo "========executing building project========"
                sh 'mvn clean install package'
            }
        }

        stage("build Docker image"){
            steps {
                sh 'docker build -t aakibvah/calculator .'
            }
        }

        stage("Push image to repository"){
            steps{
                withCredentials([string(credentialsId: 'dockerToken', variable: 'dockerToken')]) {     
                    sh 'docker login -u aakibvah -p ${dockerToken}'
                    sh 'docker push aakibvah/calculator'  
                }
                
            }        
        }
    }
}