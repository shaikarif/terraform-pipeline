pipeline {

agent none {

}

stages  {
   stage('Authentication to AWS')
       steps {
          withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: '4dc60d28-9c7d-4c5c-9b46-4e7
56c958cd5', secretKeyVariable: AWS_SECRET_ACCESS_KEY')] {
     }
   }
    stage('Terraform plan')
       steps {
            'sh terraform plan'
 }
 }
}