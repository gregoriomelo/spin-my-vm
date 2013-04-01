%w{build-essential git-core wget curl linux-image-extra-3.5.0-17-generic}.each do |pack|
  package "#{pack}"
end
