remote_file "#{node['postgresql']['file_name']}" do
  source "#{node['postgresql']['remote_uri']}"
end

bash "install_postgresql" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    rpm -ivh /tmp/pgdg-centos93-9.3-1.noarch.rpm
  EOH
end

node['postgresql']['rpm'].each do |rpm|
  package rpm[:package_name] do
    action :install
  end
end

bash "init_db" do
  user "root"
  code <<-EOH
    /etc/rc.d/init.d/postgresql-9.3 initdb
  EOH
  not_if "sudo ps aux | grep -w -- postgresql | grep -qv grep"
end

service "postgresql-9.3" do
  action [:start, :enable]
end
