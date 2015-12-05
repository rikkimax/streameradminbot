chmod 600 ./deploy_key

dub fetch knocker

echo "Host vps1.cattermole.co.nz" >> ~/.ssh/config
echo "  UserKnownHostsFile /dev/null" >> ~/.ssh/config
echo "  StrictHostKeyChecking no" >> ~/.ssh/config

ssh-agent echo "ssh-add ./deploy_key ; dub run knocker --build=release -- vps1.cattermole.co.nz ; scp  -v -i ./deploy_key -r $(pwd) alphabot@vps1.cattermole.co.nz:~/" | bash