class CommentsController < ApplicationController
  respond_to :json
  
  def index
    @comments = Comments.all[0]
    respond_with(@comments)
  end
end