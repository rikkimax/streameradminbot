restorecon -R -v ~/.ssh

echo $DEPLOY_KEY > ~/.ssh/sshDeployKey
chmod 600 ~/.ssh/sshDeployKey

ssh-agent echo "ssh-add ~/.ssh/sshDeployKey ; scp -v -i ~/.ssh/sshDeployKey -r $(pwd) alphabot@vps1.cattermole.co.nz:~/" | bash