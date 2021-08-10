pipeline {

  agent any
  stages {
     stage("Authentication to AWS") {
         steps {
           withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'a1861a51-fd3d-40ef-949f-b4e8703ba2e1', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')] {
         }
      } 
     stage("Terraform init") {
          steps {
             'sh terraform init'
          }
     }
     stage("Terraform plan") {
          steps {
             'sh terraform plan'
          }
     }
       
 
     
  }
} 
