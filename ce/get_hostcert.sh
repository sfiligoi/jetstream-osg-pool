# Note: You will need port 80 open during this run
yum install certbot
certbot certonly --standalone --email isfiligoi@sdsc.edu -d js-129-114-19-48.jetstream-cloud.org
ln -s /etc/letsencrypt/live/*/cert.pem /etc/grid-security/hostcert.pem
ln -s /etc/letsencrypt/live/*/privkey.pem /etc/grid-security/hostkey.pem
chmod 0600 /etc/letsencrypt/archive/*/privkey*.pem
