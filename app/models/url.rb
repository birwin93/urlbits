require "digest"
 
class Url < ActiveRecord::Base
  attr_accessible :original_url
  attr_protected :shortened_url

  before_save :create_short_url
  validates :original_url, presence: true, uniqueness: true

  def create_short_url
  	hash_url =  Digest::MD5.hexdigest(self.original_url)
  	self.shortened_url = "www.urlbits.com/" + hash_url[0..6];
  end

end

