class BusinessesController < ApplicationController
  respond_to :json
  
  def index
    @biz = Businesses.all
    respond_with(@biz)
  end
end