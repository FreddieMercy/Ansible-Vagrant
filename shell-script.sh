# Install Apache

yum -y install --quiet httpd httpd_devel
# Copy configuration files.
cp /etc/httpd/conf/httpd.conf httpd.conf
#cp httpd-vhosts.conf /etc/httpd/conf/httpd-vhosts.conf

# Start Apache and configure it to run at boot
service httpd start
chkconfig httpd on