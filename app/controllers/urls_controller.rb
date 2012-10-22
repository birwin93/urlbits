class UrlsController < ApplicationController
	def new
	end

	def show
		@url = Url.find(params[:id])
	end

	def create
		@url = Url.new(params[:url])
		if @url.save
			redirect_to @url
		else 
			render 'site/home'
		end
	end

	def edit
	end

	def update
	end

	def index
	end

end
