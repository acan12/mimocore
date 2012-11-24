class Members
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name 
  field :group_name
  
  has_one :userx
end