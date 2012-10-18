class Url < ActiveRecord::Base
  attr_accessible :original_url
  attr_protected :shortened_url

  before_save :create_short_url

  validates :original_url, :shortened_url, presence: true, uniqueness: true

  def create_short_url
  	val = self.original_url.length / 2
  	self.shorten_url = self.original_url[0..val]
  end

end

