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
        sh 'ansible-playbook -i /home/odix/Devops/ansible/hosts /home/odix/Devops/ansible/eureka-MS/eureka-MS-playbook-ci.yml;'
      }
    }

    stage('Ansible CD') {
      steps {
        sh 'ansible-playbook -i /home/odix/Devops/ansible/hosts /home/odix/Devops/ansible/eureka-MS/eureka-MS-playbook-cd.yml;'
      }
    }

  }
}