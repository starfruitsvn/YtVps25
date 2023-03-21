yum install squid
systemctl start squid
systemctl enable squid
systemctl status squid
curl -s "https://raw.githubusercontent.com/starfruitsvn/YtVps25/main/squid.conf"
cp squid.conf /etc/squid/squid.conf
systemctl restart squid
firewall-cmd --permanent --add-port=3128/tcp
firewall-cmd --reload
