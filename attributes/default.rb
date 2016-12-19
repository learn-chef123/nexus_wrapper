# override[:nexus][:base_dir] = '/opt/mount1'
# override[:nexus][:home] = "#{node[:nexus][:base_dir]}/#{node[:nexus][:name]}"
# override[:nexus][:pid_dir] = "#{node[:nexus][:home]}/shared/pids"
# override[:user_home] = "/home/nexus"
# override[:nexus][:work_dir] = "/opt/mount1/nexus/sonatype-work/nexus"
default[:nexus][:version] = '2.12.0-01'
default[:nexus][:external_version] = '2.12.0-01'
default[:nexus][:work_dir] = "/opt/mount1/nexus/sonatype-work/nexus"

default[:nexus][:url] = "http://download.sonatype.com/nexus/oss/nexus-#{node[:nexus][:external_version]}-bundle.tar.gz"

default[:nexus][:checksum] = 'bf3c02ef9cdea0e854e0feba85d74f79215db04b692aebbaea37e4caf83c7fcc'
default[:nexus][:bundle_name] = "#{node[:nexus][:name]}-#{node[:nexus][:version]}"
