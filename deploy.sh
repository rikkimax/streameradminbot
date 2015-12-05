restorecon -R -v ~/.ssh

echo $DEPLOY_KEY > ~/.ssh/sshDeployKey
chmod 600 ~/.ssh/sshDeployKey



echo "Adding cert"

ssh-add ~/.ssh/sshDeployKey

echo "Pre SCP copying"
echo "Setting ssh-agent"

ssh-agent echo "scp -r $(pwd) alphabot@vps1.cattermole.co.nz:~/" | bash

echo "Post SCP copying"