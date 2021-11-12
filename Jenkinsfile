pipeline {
  agent any
  containerTemplate(name: 'busybox', image: 'busybox', command: 'sleep', args: '99d')

  stages {
    stage('test') {
      steps {
        sh 'cat /etc/os-release'
        sh 'cat /etc/passwd'
        echo 'meow'
      }
    }
  }
}
