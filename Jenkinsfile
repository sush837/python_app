pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/sush837/python_app.git'
            }
        }

        stage('Run Script') {
            steps {
                sh 'python3 rev.py'
            }
        }
    }

    post {
        success {
            echo 'Python script executed successfully!'
        }
        failure {
            echo 'Script execution failed. Check the logs for errors.'
        }
    }
}
