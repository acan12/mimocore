class Events
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :description, type: String
  field :periodic_type, type: String
  field :date_start, type: Date
  field :date_end, type: Date
  field :time_start, type: Date
  field :time_end, type: Date
  field :location, type: String
  field :lat, type: Float
  field :lng, type: Float
  field :status, type: String
  field :owner, type: String
  field :owner_type, type: String
  
  
  embeds_many :members
  embedded_in :businesses
  
end