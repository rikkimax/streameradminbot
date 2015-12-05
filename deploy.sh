dub fetch knocker
dub run knocker --build=release -- vps1.cattermole.co.nz
scp -r $(pwd) alphabot@vps1.cattermole.co.nz:~/program
