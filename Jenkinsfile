pipeline {
    agent any

    stages {

        stage('Install Dependencies') {
            steps {
                sh '''
                echo "Updating system packages"
                sudo apt update -y

                echo "Installing required tools"
                sudo apt install -y git tree unzip curl wget

                echo "Installing AWS CLI v2"
                curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip
                unzip -q awscliv2.zip
                sudo ./aws/install --update
                aws --version

                echo "Installing Terraform"
                wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip
                unzip terraform_1.6.6_linux_amd64.zip
                sudo mv terraform /usr/local/bin/
                terraform version
                '''
            }
        }

        stage('Pre-Build') {
            steps {
                sh '''
                pwd
                ls -ltr
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
