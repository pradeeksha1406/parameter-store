pipeline {
  agent { label 'workstation'}

  options {
    ansiColor('xterm')
  }

    stage('Terraform Apply') {
      steps {
        sh 'make'
      }
    }
  }
}
