template "td.repo" do
  path "/etc/yum.repos.d/td.repo"
  owner "root"
  group "root"
  mode "0644"
  source "td.repo.erb"
end

yum_package "td-agent" do
  action :install
end
