pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean install package'
      }
    }

    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }

    stage('Ansible CI') {
      steps {
        sh 'sudo ansible-playbook -i /home/odix/ansible/hosts /home/odix/ansible/eureka-MS/eureka-MS-playbook-ci.yml;'
      }
    }

    stage('Ansible CD') {
      steps {
        sh 'sudo ansible-playbook -i /home/odix/ansible/hosts /home/odix/ansible/eureka-MS/eureka-MS-playbook-cd.yml;'
      }
    }

  }
}