#MongoMapper.config = { 
#  Rails.env => { 'uri' => ENV['MONGOHQ_URL'] || 
#                          'mongodb://localhost/app1611555' } }

#MongoMapper.connect(Rails.env)

MongoMapper.connection = Mongo::Connection.new(ENV['MONGOHQ_URL'])             
MongoMapper.database = "app1611555"
#MongoMapper.database = "mimodb"    

##if defined?(PhusionPassenger)
##  PhusionPassenger.on_event(:starting_worker_process) do |forked|
##   MongoMapper.connection.connect_to_master if forked
##  end
##end