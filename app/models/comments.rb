class Comments
  include Mongoid::Document
  
  field :body, type: String
  field :owner
end