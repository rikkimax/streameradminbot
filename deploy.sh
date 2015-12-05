chmod 600 ./deploy_key

ssh-agent echo "ssh-add ./deploy_key ; scp -v -i ./deploy_key -r $(pwd) alphabot@vps1.cattermole.co.nz:~/" | bash