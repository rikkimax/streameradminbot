chmod 600 ./deploy_key

dub fetch knocker

ssh-agent echo "ssh-add ./deploy_key ; dub run knocker --build=release -- vps1.cattermole.co.nz ; scp  -o CheckHostIP=no -o UserKnownHostsFile=/dev/null -v -i ./deploy_key -r $(pwd) alphabot@vps1.cattermole.co.nz:~/" | bash