pipeline{
    agent any
    parameters{
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select the Environment')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select the Actionn to be Performed')
    }
    stages{
        stage('Terraform init'){
            steps{
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
        stage('Terraform plan'){
            steps{
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
        }
        }
        stage('Terraform Apply/Destroy'){
            steps{
                "terraform ${ACTION} -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
    }
}