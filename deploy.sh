chmod 600 ./deploy_key

dub fetch knocker

ssh-agent echo "ssh-add ./deploy_key ; dub run knocker --build=release -- vps1.cattermole.co.nz ; scp -i ./deploy_key -r $(pwd) -o stricthostkeychecking=no alphabot@vps1.cattermole.co.nz:~/" | bash