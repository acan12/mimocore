class Api::V1::BusinessesController < Api::V1::ApplicationController             
  respond_to :json
  
  
  def index
    @business = Businesses.order_by([:created, :desc])
    respond_with(@business)
  end                      
  
  def create
    bizname = params[:bizname]
    desc  = params[:description]
    event = params[:event]                                               
    @business = Businesses.create(:bizname => bizname, :category => "market", :description => desc, :event => event, :created => Time.now)
     
    respond_with(@business, :location => api_v1_biz_url)         
  end            
  
  def update
    id = params[:id]         
    bizname = params[:bizname]
    desc  = params[:description]
    event = params[:event]     
                               
    @business = Businesses.find(id).update_attributes(:bizname => bizname, :description => desc, :event => event)
    respond_with(api_v1_biz_url)  
  end
  
  def delete                                              
    id = params[:id]             
                               
    @business = Businesses.find(id).remove            
    respond_with(api_v1_biz_url)    
  end
end