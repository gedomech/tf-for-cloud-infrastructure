**Terraform AWS EC2 Instance Deployment**

This Terraform project allows you to deploy an Amazon Web Services (AWS) EC2 instance using Terraform. The project defines the necessary configuration to create an EC2 instance in the "us-east-2" region. You can customize the instance's Amazon Machine Image (AMI) and instance type according to your needs.

### Prerequisites
Before using this project, ensure that you have the following prerequisites installed:

- [Terraform](https://www.terraform.io/downloads.html) (Version >= 1.0.0, < 2.0.0)
- An [AWS account](https://aws.amazon.com/) with configured AWS credentials.
- [AWS CLI](https://aws.amazon.com/cli/) configured with your AWS credentials and default region.

### Usage

1. Clone this repository to your local machine.

   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory.

   ```bash
   cd terraform-aws-ec2-instance
   ```

3. Initialize the Terraform working directory.

   ```bash
   terraform init
   ```

4. Review and customize the configuration in the `main.tf` file.

   - `ami` - Replace `"ami-1234567891012"` with the desired AMI ID. Visit [AWS Documentation](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/finding-an-ami.html) for more information.
   - `instance_type` - Replace `"t2.micro"` with the desired instance type.

5. Deploy the AWS EC2 instance.

   ```bash
   terraform apply
   ```

6. Review the changes and type "yes" when prompted to confirm the deployment (or use the --auto-approve flag to avoid the confirmation).

   The Terraform script will create the specified EC2 instance in the "us-east-2" region.

7. Once the deployment is complete, Terraform will display the outputs, including the public IP address and other instance details.

### Clean Up

To remove the deployed AWS EC2 instance and associated resources:

1. Navigate to the project directory.

   ```bash
   cd getting_started
   ```

2. Destroy the resources.

   ```bash
   terraform destroy
   ```

3. Review the changes and type "yes" when prompted to confirm the destruction of resources.

### Important Note

This project serves as a basic example of deploying an EC2 instance with Terraform. Be sure to customize the configuration to align with your specific requirements. Additionally, follow best practices for handling secrets and sensitive data when using Terraform in production environments.