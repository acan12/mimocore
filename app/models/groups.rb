class Groups
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :description, type: String
  field :owner, type: String
  field :count, type: Integer
  
  has_many :members
  
end