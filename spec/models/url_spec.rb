require 'spec_helper'

describe Url do
 	
 	before do 
 		@url = Url.new
 		@url.original_url = "www.example.com/somethingelse"
 	end

 	subject { @url }

 	it { should respond_to(:original_url) }
 	it { should respond_to(:shortened_url) }

 	describe "when object is saved" do 
		before { @url.create_short_url }
		its(:shortened_url) { should eq("www.example.com") }
	end

 	describe "when original_url is not present" do
 		before { @url.original_url = " " }
 		it { should_not be_valid }
 	end

 	describe "when shortened_url is not present" do
 		before { @url.shortened_url = " "}
 		it { should_not be_valid }
 	end

 	describe "when original_url is not unique" do
 		before do
 			same_url = @url.dup
 			same_url.save
 		end
 		it { should_not be_valid }
 	end

end
