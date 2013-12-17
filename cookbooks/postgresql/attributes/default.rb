default['postgresql']['versions']   = "93-9.3.1"
default['postgresql']['file_name']  = "/tmp/pgdg-centos93-9.3-1.noarch.rpm"
default['postgresql']['remote_uri'] = "http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-centos93-9.3-1.noarch.rpm"
default['postgresql']['rpm'] = [
  {
    :package_name => "postgresql93-server"
  },
  {
    :package_name => "postgresql93-devel"
  },
  {
    :package_name => "postgresql93-contrib"
  }
]
