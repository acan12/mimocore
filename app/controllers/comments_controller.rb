class CommentsController < ApplicationController
  respond_to :json
  
  def index
    @comments = Comments.all
    respond_with(@comments)
  end
end