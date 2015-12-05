echo $DEPLOY_KEY > ~/.ssh/sshDeployKey
chmod 600 ~/.ssh/sshDeployKey

echo "Setting ssh-agent"

ssh-agent bash

echo "Adding cert"

ssh-add ~/.ssh/sshDeployKey

echo "Pre SCP copying"

scp -r $(pwd) alphabot@vps1.cattermole.co.nz:~/

echo "Post SCP copying"