class UrlController < ApplicationController

	def new
	end

	def show
		
	end

	def create
		@url = Url.new(params[:url])
		if @url.save
			render @url
	end

	def edit
	end

	def update
	end

	def index
	end
end
