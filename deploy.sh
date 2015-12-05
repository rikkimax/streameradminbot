restorecon -R -v ~/.ssh

echo $DEPLOY_KEY | sed 's/\\n/\n/g' > ~/.ssh/sshDeployKey
chmod 600 ~/.ssh/sshDeployKey

cat ~/.ssh/sshDeployKey

ssh-agent echo "ssh-add ~/.ssh/sshDeployKey ; scp -v -i ~/.ssh/sshDeployKey -r $(pwd) alphabot@vps1.cattermole.co.nz:~/" | bash