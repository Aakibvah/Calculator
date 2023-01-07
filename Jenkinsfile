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
            withCredentials([usernameColonPassword(credentialsId: 'docker-pass', variable: 'docker')]) {
                sh 'docker login -u aakibvah -p #{docker}'
                sh 'docker push aakibvah/calculator'  
            }
    }
    post{
        always{
            echo "========always========"
        }
    }
}