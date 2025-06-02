pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Setup Python Env') {
            steps {
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install --upgrade pip
                pip install -r requirements.txt
                '''
            }
        }
        
        stage('Run Tests or App') {
            steps {
                sh '''
                . venv/bin/activate
                # Run your Flask app or tests here
                # For example, to run the Flask app:
                # python app.py
                
                # OR if you have tests, you can run:
                # pytest
                
                # For now, let's just print Flask version to verify env works
                flask --version
                '''
            }
        }
    }
}
