dub fetch knocker
echo $KNOCK_KNOCK_PORTS
dub run knocker --build=release -- vps1.cattermole.co.nz & ssh alphabot@vps1.cattermole.co.nz date
# scp -o ConnectTimeout=25 -r $(pwd) alphabot@vps1.cattermole.co.nz:~/program
