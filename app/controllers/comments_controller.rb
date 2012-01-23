class CommentsController < ApplicationController
  respond_to :json
  
  def index
    @comments = Comments.all
    respond_with(@comments)
  end                       
  
  def create
     owner = params[:owner]
     body  = params[:body]
                                                   
     @comments = Comments.create(:owner => owner, :body => body)
     
     respond_with(@comments)    
  end
end