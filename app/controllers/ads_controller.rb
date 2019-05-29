class AdsController < ApplicationController

	def index
    	@ads = Ad.all
 	end
 	
 	def show
 		@ad = Ad.find(params[:id])
 	end
 	
 	def edit
    	@ad = Ad.find(params[:id])
    end
    
    def update
    	@ad = Ad.find(params[:ad][:id])
    	@ad.name = params[:ad][:name]
    	@ad.description = params[:ad][:description]
    	@ad.email = params[:ad][:email]
    	@ad.img_url = params[:ad][:img_url]
    	@ad.price = params[:ad][:price]
    	@ad.seller_id = params[:ad][:seller_id]
    	
    	@ad.save
    	
    	redirect_to "/ads/#{@ad.id}"
    end
    
    def new
    	@ad = Ad.new
    end
    
    def create
    	@ad = Ad.new
    	@ad.name = params[:ad][:name]
    	@ad.description = params[:ad][:description]
    	@ad.email = params[:ad][:email]
    	@ad.img_url = params[:ad][:img_url]
    	@ad.price = params[:ad][:price]
    	@ad.seller_id = params[:ad][:seller_id]
    	
    	@ad.save
    	
    	redirect_to "/ads/#{@ad.id}"
    end
    
    def destroy
    	@ad = Ad.find(params[:id])
    	@ad.destroy
    	
    	redirect_to "/ads"
    end
    
  
end
