class StreamsController < ApplicationController
  respond_to :json
  
  def show
    @streams = Comments.all
    respond_with(@streams)
  end                      
  
  def create
     owner = params[:owner]
     body  = params[:body]
                                                   
     @streams = Comments.create(:owner => owner, :body => body)
     
     respond_with(@streams)    
  end
end