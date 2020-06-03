cd /tmp
curl -O https://packages.chef.io/files/stable/chef-server/12.17.33/el/7/chef-server-core-12.17.33-1.el7.x86_64.rpm
rpm -Uvh chef-server-core-12.17.33-1.el7.x86_64.rpm
chef-server-ctl reconfigure
chef-server-ctl user-create rcpeter Ronnit Peter ronnitpeter@gmail.com 'password' --filename /home/user/rcpeter.pem
chef-server-ctl org-create rpeterinc 'Ronnit Peter, Inc.' --association_user rcpeter --filename rcpeter-validator.pem
chef-server-ctl install chef-manage
chef-server-ctl reconfigure
^Z
chef-manage-ctl reconfigure
