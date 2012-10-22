require 'spec_helper'

describe Url do
 	
 	before :all do 
 		@url = Url.new
 		@url.original_url = "www.example.com/somethingelse"
 		@url.save
 	end

 	subject { @user }

 	it { should respond_to(:original_url) }
 	it { should respond_to(:shortened_url) }

 	describe "when object is saved" do 
		its(:shortened_url) { should eq("www.urlbits.heroku.com/55891a1") }
	end

 	describe "when original_url is not present" do
 		before { @url.original_url = " " }
 		it { should validate_presence_of(:original_url) }
 	end

 	describe "when original_url is not unique" do
 		same_url = @url.dup
 		same_url.should_not be_valid
 	end

end
