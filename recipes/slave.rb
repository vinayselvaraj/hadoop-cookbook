
service 'hadoop-hdfs-datanode' do
    action :start
end

service 'hadoop-yarn-nodemanager' do
    action :start
end
