pipeline {
  agent {
    node {
      label 'nodejs-builder'
      customWorkspace '/home/jenkins/agent'
    }
  }

  stages {

    stage ('install deps') {
      steps {
        echo "attempting deps install..."
        sh "npm i --verbose"
        echo "installed deps"
      }
    }
  }
}