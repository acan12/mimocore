class Businesses
  include Mongoid::Document
                  
  field :bizname  
  field :description, type: String
  
  
end