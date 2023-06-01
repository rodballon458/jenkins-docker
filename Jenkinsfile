pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t rodballon458/rocky-httpd .'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push rodballon458/rocky-httpd:latest'
      }
    }
    stage('Run') {
      steps {
        sh 'kubectl run rocky-httpd --image=rodballon458/rocky-httpd:latest'
      }
    }
  }
}