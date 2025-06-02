pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from Git
                git url: 'https://github.com/khade2002/flask-webapp.git', credentialsId: 'ec2-ssh'
            }
        }

        stage('Install dependencies') {
            steps {
                sh '''
                    python3 -m venv venv          # create venv folder
                    . venv/bin/activate           # activate virtual environment
                    pip install -r requirements.txt  # install dependencies
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    . venv/bin/activate           # activate venv again before running tests
                    python your_test_script.py    # run your tests
                '''
            }
        }

        // Other stages...
    }
}
