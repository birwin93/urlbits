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
		before { @url.save }
		its(:shortened_url) { should eq("www.urlbits.com/55891a1") }
	end

 	describe "when original_url is not present" do
 		before { @url.original_url = " " }
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
