cd /tmp
curl -O https://packages.chef.io/files/stable/chefdk/2.5.3/el/7/chefdk-2.5.3-1.el7.x86_64.rpm
sudo rpm -Uvh chefdk-2.5.3-1.el7.x86_64.rpm
eval "$(chef shell-init bash)"
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
cd ~
chef generate repo generated-chef-repo
cd generated-chef-repo
ls -al
knife configure
scp user@ipaddress:/home/user/rcpeter.pem ~/.chef/
knife node list
knife ssl fetch
scp chef-starter.zip user@ipaddress:/home/user/
sudo yum install -y unzip
unzip chef-starter.zip
cd chef-repo
knife ssl fetch
knife node list
