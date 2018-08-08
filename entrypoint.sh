#/bin/sh

echo 'password: ${PWD}'
/usr/local/bin/ssserver -p 443 -k ${PWD} -m rc4-md5 --user nobody start