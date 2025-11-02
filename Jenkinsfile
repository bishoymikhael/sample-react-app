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
        sh -c 'npm i --verbose'
        echo "installed deps"
      }
    }
  }
}