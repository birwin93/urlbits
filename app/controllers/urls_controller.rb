class UrlsController < ApplicationController
	def new
	end

	def show
		@url = Url.find(params[:id])
		@newUrl = Url.new
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
		@urls = Url.all
	end

end
