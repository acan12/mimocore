#MongoMapper.config = { 
#  Rails.env => { 'uri' => ENV['MONGOHQ_URL'] || 
#                          'mongodb://localhost/app1611555' } }

#MongoMapper.connect(Rails.env)

#MongoMapper.connection = Mongo::Connection.new("mongodb://heroku:41a14a0d9537e26db2d916bf71141504@staff.mongohq.com:10037/app1611555")             
#MongoMapper.database = "app1611555"
#MongoMapper.database = "mimodb"    

#if defined?(PhusionPassenger)
#  PhusionPassenger.on_event(:starting_worker_process) do |forked|
#   MongoMapper.connection.connect_to_master if forked
#  end
#end