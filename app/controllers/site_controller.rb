class SiteController < ApplicationController
  def home
  	@url = Url.new
  end
end
