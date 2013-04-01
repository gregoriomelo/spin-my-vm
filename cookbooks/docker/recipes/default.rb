%w{golang-go lxc bsdtar}.each do |pack|
  package "#{pack}"
end

bash "install_docker" do
  not_if "which #{node[:docker][:folder]}/#{node[:docker][:binary]}"
  user "root"
  cwd "/opt/"
  code <<-EOH
    wget http://get.docker.io/builds/$(uname -s)/$(uname -m)/docker-master.tgz
    tar -xf docker-master.tgz
  EOH
end
