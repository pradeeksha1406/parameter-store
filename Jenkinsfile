pipeline {
     agent {
         docker { image 'hashicorp/terraform:latest' }
     }

//   options {
//     ansiColor('xterm')
//   }

  stages {
          stage('Terraform Init') {
              steps {
                  script {
                      sh 'terraform init'
                  }
              }
          }
          stage('Terraform Plan') {
              steps {
                  script {
                      sh 'terraform plan -out=tfplan'
                  }
              }
          }
          stage('Terraform Apply') {
              steps {
                  script {
                      sh 'terraform apply -auto-approve tfplan'
                  }
              }
          }
          stage('Upload State to S3') {
              steps {
                  script {
                      sh 'aws s3 cp terraform.tfstate s3://demoji'
                  }
              }
          }
         stage('Terraform Apply') {
            steps {
               sh 'make apply'
            }
         }
  }
}

