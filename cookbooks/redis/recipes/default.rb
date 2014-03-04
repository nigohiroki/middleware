remote_file "/usr/local/redis-2.8.6.tar.gz" do
  source "http://download.redis.io/releases/redis-2.8.6.tar.gz"
end

bash "install_redis" do
  user "root"
  cwd "/usr/local"
  code <<-EOH
    tar xzf redis-2.8.6.tar.gz
    cd /usr/local/redis-2.8.6
    make
  EOH
end
