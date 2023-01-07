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
    }
    post{
        always{
            echo "========always========"
        }
    }
}