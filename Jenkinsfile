pipeline {

agent none {

}

stages  {
   stage('Authentication to AWS')
       steps {
          withCredentials([aws(accessKeyVariable: 'ACCESS_KEY_ID', credentialsId: 'a89ea255-ffc8-41a8-b8b3-4b5b5eadf8e0', secretKeyVariable: SECRET_ACCESS_KEY')] {
     }
   }
    stage('Terraform plan')
       steps {
            'sh terraform plan'
 }
 }
}
