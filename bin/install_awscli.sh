#!/bin/bash
INSTALL_DIR="/app/vendor/awscli"
chmod +x /app/vendor/awscli-bundle/install
/app/vendor/awscli-bundle/install -i $INSTALL_DIR
chmod u+x $INSTALL_DIR/bin/aws

export PATH=~/vendor/awscli/bin:$PATH

# if [ ! -d ~/.aws ]; then

mkdir ~/.aws

cat << EOF >> ~/.aws/credentials
[default]
aws_access_key_id = $AWS_KEY
aws_secret_access_key = $AWS_SECRET_KEY
EOF

cat << EOF >> ~/.aws/config 
[default]
region = $AWS_REGION
EOF

# fi
