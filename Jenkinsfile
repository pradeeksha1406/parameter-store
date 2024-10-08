// pipeline {
//   agent { label 'workstation'}

pipeline {
  agent {
    docker { image 'node:16-alpine' }
  }

  options {
    ansiColor('xterm')
  }

  stages {

    stage('Terraform Apply') {
      steps {
        sh 'make apply'
      }
    }
  }
}
