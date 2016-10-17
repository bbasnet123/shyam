package 'epel-release' do |
	action:install|
end

package 'ngnix' do |
	action:install|
end
service 'nginx' do
  action [ :enable, :start ]
end
cookbook_file "/root/chef-repo/cookbooks/nginx/File/index.html" do
  source "index.html"
  mode "0644"
end
