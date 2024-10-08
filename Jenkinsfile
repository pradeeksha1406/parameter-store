// pipeline {
//   agent { label 'workstation'}

pipeline {
     agent {
         docker {
             image 'hashicorp/terraform:latest'
             label 'LINUX-SLAVE'
//              args  '--entrypoint="" -u root -v /opt/jenkins/.aws:/root/.aws'
         }
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
