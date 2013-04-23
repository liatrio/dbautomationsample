node[:db].each do |env, name|
	execute "create database #{name}" do
		command "mysql -uroot -p#{node[:mysql][:server_root_password]} -e 'create database if not exists #{name}'"
		user "vagrant"
	end
end
