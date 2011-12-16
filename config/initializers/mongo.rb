MongoMapper.config = { 
  Rails.env => { 'uri' => ENV['MONGOHQ_URL'] || 
                          'mongodb://localhost/app1611555' } }

MongoMapper.connect(Rails.env)

##MongoMapper.connection = Mongo::Connection.new('127.0.0.1')             
#MongoMapper.database = "app1611555"
##MongoMapper.database = "mimodb"    

##if defined?(PhusionPassenger)
##  PhusionPassenger.on_event(:starting_worker_process) do |forked|
##   MongoMapper.connection.connect_to_master if forked
##  end
##end