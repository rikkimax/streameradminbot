echo $DEPLOY_KEY > ~/.ssh/sshDeployKey
chmod 600 ~/.ssh/sshDeployKey

ssh-agent bash
ssh-add ~/.ssh/sshDeployKey

scp -i ~/.ssh/sshDeployKey -r $(pwd) alphabot@vps1.cattermole.co.nz:~/
