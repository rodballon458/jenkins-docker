pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '/usr/local/bin/docker build -t rodballon458/rocky-httpd .'
      }
    }
    stage('Push') {
      steps {
        sh '/usr/local/bin/docker push rodballon458/rocky-httpd:latest'
      }
    }
    stage('Run') {
      steps {
        sh '/usr/local/bin/kubectl get pods rocky-httpd || /usr/local/bin/kubectl run rocky-httpd --image=rodballon458/rocky-httpd:latest'
      }
    }
  }
}
