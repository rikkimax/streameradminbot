dub fetch knocker
dub run knocker --build=release -- vps1.cattermole.co.nz & echo "Deploying to server" & scp -r $(pwd) alphabot@vps1.cattermole.co.nz:~/program
