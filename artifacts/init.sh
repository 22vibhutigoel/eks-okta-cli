
#!/bin/bash
export ACCOUNT_ID=$(aws sts get-caller-identity --output text --query Account) 
export AWS_REGION=$(aws configure get region)  
mkdir /home/ec2-user/environment/okta-config/
cp /home/ec2-user/environment/eks-rbac-okta/artifacts/template/*.* /home/ec2-user/environment/okta-config/
cd /home/ec2-user/environment/okta-config/
sed -i -e "s~{AWS_REGION}~$AWS_REGION~" *.*
sed -i -e "s~{ACCOUNT_ID}~$ACCOUNT_ID~" *.*
sed -i -e "s~{MASTER_KEY}~$MASTER_KEY~" *.*
echo AWS_REGION: $AWS_REGION
echo ACCOUNT_ID: $ACCOUNT_ID
