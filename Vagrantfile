# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# GitBucket-Jenkins-Tomcat
# CI/CD Demo sample with Java1.8
#
# |~~~~~~~~~~~~~|         |~~~~~~~~~~~~|
# |             | WebHook |            |
# |  GitBucket  |-------->|  Jenkins   |
# |             |         |            |
# |~~~~~~~~~~~~~|         |~~~~~~~~~~~~|
#        ^                      |
#        | git push/clone       | deployment
#        |                      V
# |~~~~~~~~~~~~~|         |~~~~~~~~~~~~|
# |             |         |            |
# | Development |         | Production |
# |             |         |            |
# |~~~~~~~~~~~~~|         |~~~~~~~~~~~~|

#

Vagrant.configure("2") do |config|
  # gitbucket server setup
  config.vm.define "gitbucket" do |gitbucket|
    gitbucket.vm.box = "gitbucket"
    gitbucket.vm.network "private_network", ip: "192.168.99.2"
  end

  # jenkins server setup
  config.vm.define "Jenkins" do |jenkins|
    jenkins.vm.box = "jenkins"
    jenkins.vm.network "private_network", ip: "192.168.99.3"
  end

  # production server setup
  config.vm.define "production" do |production|
    production.vm.box = "production"
    production.vm.network "private_network", ip: "192.168.99.4"
  end
end
