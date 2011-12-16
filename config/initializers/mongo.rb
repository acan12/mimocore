MongoMapper.connection = Mongo::Connection.new(ENV['MONGOHQ_URL'])
MongoMapper.database = "app1611555"

if defined?(PhusionPassenger)
  PhusionPassenger.on_event(:starting_worker_process) do |forked|
   MongoMapper.connection.connect_to_master if forked
  end
end