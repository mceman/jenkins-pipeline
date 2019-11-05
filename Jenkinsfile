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
          sh 'echo "Tento subor obsahuje vystup a data" > outputFile.txt'
        }
      }
    }
  post {
    always {
      archiveArtifacts artifacts: 'outputFile.txt', onlyIfSuccessful: true
    }
  }
}
