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
          withCredentials([[
            $class: "UsernamePasswordMultiBinding",
            credentialsId: 'vm-creds',
            usernameVariable: 'VM_USER',
            passwordVariable: 'VM_PASSWORD',
          ]]) {
            sh """
              echo ${VM_PASSWORD} | ssh ${VM_USER}@192.168.100.2 -p 25
              echo whoami
            """
          }
        }
      }
    }
  }
}