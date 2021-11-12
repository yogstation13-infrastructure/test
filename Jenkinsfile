pipeline {
  node('kaniko')
  containerTemplate(name: 'busybox', image: 'busybox', command: 'sleep', args: '99d')

  stages {
    stage('test') {
      steps {
        container('kaniko')
        sh 'cat /etc/os-release'
        sh 'cat /etc/passwd'
        echo 'meow'
      }
    }
  }
}
