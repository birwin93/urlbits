class SiteController < ApplicationController
  def home
  	@url = Url.new
  end

  def redirect
  	@url = Url.find_by_shortened_url(params[:shortened_url])
  	if @url
  		redirect_to @url.original_url
  	else 
  		redirect_to root_url
  	end
  end
end
