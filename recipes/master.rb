
yum_package 'hadoop-hdfs-namenode' do
    action :install
end

yum_package 'hadoop-conf-pseudo' do
    action :install
end

execute 'init_namenode' do
    command 'service hadoop-hdfs-namenode init'
    creates '/var/lib/hadoop-hdfs/cache/hdfs/dfs/name'
end

service 'hadoop-hdfs-namenode' do
    action :start
end

service 'hadoop-hdfs-datanode' do
    action :start
end

service 'hadoop-yarn-resourcemanager' do
    action :start
end

service 'hadoop-yarn-nodemanager' do
    action :start
end