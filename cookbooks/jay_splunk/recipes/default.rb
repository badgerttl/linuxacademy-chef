#
# Cookbook:: jay_splunk
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package='splunk-6.6.0-1c4f3bbe1aea-linux-2.6-x86_64.rpm'
url='https://download.splunk.com/products/splunk/releases/6.6.0/linux/splunk-6.6.0-1c4f3bbe1aea-linux-2.6-x86_64.rpm'

remote_file "#{Chef::Config[:file_cache_path]}/#{package}" do
	source url
end

rpm_package package do
	source "#{Chef::Config[:file_cache_path]}/#{package}"
	action :install
end

