# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  if !File.directory?(File.expand_path("../cookbooks/apt", __FILE__))
    puts "Run `librarian-chef install` first to bring down the cookbooks."
    exit 1
  end

  config.omnibus.chef_version = :latest

  config.vm.define :dbauto do |dbauto|
    dbauto.vm.host_name = "blackburntech-com-base"
    dbauto.vm.box = "precise32"
    dbauto.vm.box_url = "http://files.vagrantup.com/precise32.box"
  end

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "apt"
    chef.add_recipe "git"
    chef.add_recipe "build-essential"
    chef.add_recipe "java"
    chef.add_recipe "maven"
    chef.add_recipe "mysql::server"
    chef.add_recipe "db"

  chef.json = {
    "development" => true,
    "mysql" => {
      "server_root_password" => "testpass",
      "server_repl_password" => "testpass",
      "server_debian_password" => "testpass",
      "allow_remote_root" => true,
      "bind_address" => "0.0.0.0",
    },
    "db" => {
        "flywaysampe" => "db_flyway",
        "mybatissample" => "db_mybatis",
        "liquibasesample" => "db_liquibase"
      }

  }
  end

end
