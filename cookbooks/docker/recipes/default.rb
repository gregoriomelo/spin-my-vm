%w{build-essential git-core golang-go lxc wget bsdtar curl linux-image-extra-3.5.0-17-generic ruby-net-ssh}.each do |pack|
  package "#{pack}"
end

