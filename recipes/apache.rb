#
# Cookbook:: gravcms
# Recipe:: apache
#
# Copyright:: 2017, Graham Williams @ corekode, All Rights Reserved.
# Install httpd/Apache package

if node['platform_family'] == 'rhel'
  package = 'httpd'
elsif node['platform_family'] == 'debian'
  package = 'apache2'
end

package 'apache2' do
  package_name package
  action :install
end

service 'apache2' do
  service_name 'httpd'
  action [:start, :enable]
end
