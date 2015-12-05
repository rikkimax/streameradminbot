echo $DEPLOY_KEY > ~/.ssh/sshDeployKey
chmod 600 ~/.ssh/sshDeployKey
ssh -i ~/.ssh/sshDeployKey alphabot@vps1.cattermole.co.nz date
# scp -o ConnectTimeout=25 -r $(pwd) alphabot@vps1.cattermole.co.nz:~/program
