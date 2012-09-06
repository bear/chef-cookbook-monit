#
# Cookbook Name:: monit
# Recipe:: default
#

package "monit" do
  action :nothing
end.run_action(:install)

service "monit" do
  action [:enable, :start]
  enabled true
  supports [:start, :restart, :stop]
end

template "/etc/monit/monitrc" do
  source "monitrc.erb"
  owner  "root"
  group  "root"
  mode   0700
  notifies :restart, resources(:service => "monit"), :delayed
end

directory "/etc/monit/conf.d/" do
  owner  "root"
  group  "root"
  mode   0755
  action :create
  recursive true
end
