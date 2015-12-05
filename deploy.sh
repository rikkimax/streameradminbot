dub fetch knocker
dub run knocker --build=release -- vps1.cattermole.co.nz & sshpass -p $PWSD ssh alphabot@vps1.cattermole.co.nz date
# scp -o ConnectTimeout=25 -r $(pwd) alphabot@vps1.cattermole.co.nz:~/program
