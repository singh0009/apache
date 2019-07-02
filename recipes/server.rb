#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
package 'apache2' do
	action :install
end


file '/var/www/html/index.html' do
	content "
	<h1> Hello Balkar </h1>
	<h1> #{node['hostname']}</h1>
	<h1> #{node['ipaddress']}</h1>

"
end


service 'apache2' do
	action [:enable, :start]
end

