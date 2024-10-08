// pipeline {
//   agent { label 'workstation'}

pipeline {
  agent {
    docker { image 'docker run -i -t hashicorp/terraform:latest plan' }
  }

//   options {
//     ansiColor('xterm')
//   }

  stages {

    stage('Terraform Apply') {
      steps {
        sh 'make apply'
      }
    }
  }
}
