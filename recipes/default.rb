#
# Cookbook:: hadoop
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file '/etc/yum.repos.d/bigtop.repo' do
    source 'bigtop.repo'
    owner 'root'
    group 'root'
    mode '0644'
    action :create
end

yum_package 'java-1.8.0-openjdk-devel' do
    action :install
end

yum_package 'hadoop' do
    action :install
end

yum_package 'hadoop-hdfs-datanode' do
    action :install
end

yum_package 'hadoop-yarn-nodemanager' do
    action :install
end

yum_package 'hadoop-mapreduce' do
    action :install
end
