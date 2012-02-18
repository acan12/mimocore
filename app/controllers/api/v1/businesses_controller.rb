class Api::V1::BusinessesController < Api::V1::ApplicationController
  def index
    @business = Businesses.all
    respond_with(@business)
  end                      
  
  def create
    puts request.format
     bizname = params[:bizname]
     desc  = params[:description]
                                                   
     @business = Businesses.create(:bizname => bizname, :category => "market", :description => desc)
     
     respond_with(@business, :location => api_v1_biz_url)         
  end
end