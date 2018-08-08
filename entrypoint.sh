#/bin/sh
echo "password: "${PASS}
/usr/local/bin/ssserver -p 443 -k ${PASS} -m rc4-md5 --user nobody start