package "monit"

service "monit" do
  action [:enable, :start]
  enabled true
  supports [:start, :restart, :stop]
end

template "/etc/monit/monitrc" do
  owner "root"
  group "root"
  mode 0700
  source 'monitrc.erb'
  notifies :restart, resources(:service => "monit"), :delayed
  variables ({
    :notify_email     => node[:monit][:notify_email],
    :lib_dir          => node[:monit][:lib_dir],
    :poll_period      => node[:monit][:poll_period],
    :poll_start_delay => node[:monit][:poll_start_delay],
    :http_admin       => search(:monit_http_admin, "*:*").first,
    })
end

directory "/etc/monit/conf.d/" do
  owner  'root'
  group 'root'
  mode 0755
  action :create
  recursive true
end
