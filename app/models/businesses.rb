class Businesses
  include Mongoid::Document
  include Mongoid::Timestamps
                  
  field :bizname  
  field :description, type: String
  
  has_many :events, :as => :eventable
  
end