pipeline {
  agent any
    stages {
      stage('syntax') {
        steps {
          sh 'python -m py_compile jenkinscode.py'
        }      
      }
      stage('test') {
        steps {
          sh 'bash test.sh'
        }
      }
      stage('deploy') {
        steps {
          echo 'Uploading to server'
        }
      }
    }
}
