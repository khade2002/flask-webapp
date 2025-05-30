pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git url: 'https://github.com/khade2002/flask-webapp.git', branch: 'master'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test App') {
            steps {
                sh 'python app.py & sleep 5 && curl http://localhost:5000'
            }
        }
    }
}
