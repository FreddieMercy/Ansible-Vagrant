# Install Apache

yum -y install --quiet httpd httpd_devel
# Copy configuration files.
cp httpd.conf /etc/httpd/conf/httpd.conf
cp httpd-vhosts /etc/httpd/conf/httpd-vhosts.conf

# start Apache and configure it to run at boot
service httpd start
chkconfig httpd on