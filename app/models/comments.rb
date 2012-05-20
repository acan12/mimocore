class Comments
  include Mongoid::Document
  
  field :body, type: String
  field :owner
  field :count
  field :created_at, :type => Date
end