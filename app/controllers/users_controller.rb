class UsersController < ApplicationController
  respond_to :json
  
  def show
    @users = Users.find_by_username("gojali")
  end
end