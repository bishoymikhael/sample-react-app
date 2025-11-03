pipeline {
  agent {
    node {
      label 'nodejs-builder'
      customWorkspace '/home/jenkins/agent'
    }
  }

  stages {

    // assume previous steps

    stage ('install deps') {
      steps {
        echo "attempting deps install..."
        sh "npm i --verbose"
        echo "installed deps"
      }
    }

    stage ('artifact-manager') {
      steps {
        script {
           withCredentials([
              usernamePassword(credentialsId: 'vm-creds', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')
            ]) {
            sh """
              echo ${PASSWORD} | ssh ${USERNAME}@localhost -p 25
              echo whoami
            """
          }
        }
      }
    }
  }
}