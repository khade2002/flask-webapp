pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/khade2002/flask-webapp.git'
            }
        }

        stage('Install dependencies') {
            steps {
                sh 'python3 -m venv venv && source venv/bin/activate && pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Running tests (none for now)"'
            }
        }

        stage('Deploy') {
            steps {
                sh 'ansible-playbook -i ansible/inventory ansible/playbook.yml'
            }
        }
    }
}
