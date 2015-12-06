chmod 600 ./deploy_key

dub fetch knocker

echo "Host vps1.cattermole.co.nz" >> ~/.ssh/config
echo "  UserKnownHostsFile /dev/null" >> ~/.ssh/config
echo "  StrictHostKeyChecking no" >> ~/.ssh/config

tar -zcvf compressed.tar.gz $(ls -rt)

ssh-agent echo "ssh-add ./deploy_key ; dub run knocker --build=release -- vps1.cattermole.co.nz ; scp -i ./deploy_key ./compressed.tar.gz alphabot@vps1.cattermole.co.nz:~/from_travis/" | bash