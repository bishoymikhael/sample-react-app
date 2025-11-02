pipeline {
  agent { label 'nodejs-builder' }

  stages {

    stage ('install deps') {
      steps {
        echo "attempting deps install..."
        sh 'npm i --verbose'
        echo "installed deps"
      }
    }
  }
}