class Businesses
  include Mongoid::Document
  include Mongoid::Timestamps
                  
  field :merchant_id
  field :merchant_name
  field :description, type: String
  
  
  # embeds_many :events
  
end