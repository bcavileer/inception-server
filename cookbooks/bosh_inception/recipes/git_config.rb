execute "git config user.name" do
  command "git config --global user.name #{node.git.name}"
  user "vcap"
  group "vcap"
  action :run
  environment ({'HOME' => '/home/vcap'})
end

execute "git config user.email" do
  command "git config --global user.email #{node.git.email}"
  user "vcap"
  group "vcap"
  action :run
  environment ({'HOME' => '/home/vcap'})
end

execute "git config color.ui" do
  command "git config --global color.ui true"
  user "vcap"
  group "vcap"
  action :run
  environment ({'HOME' => '/home/vcap'})
end
