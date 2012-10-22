require 'spec_helper'

describe Url do
 	
 	before do 
 		@url = Url.create(original_url: "www.example.com/somethingelse")
 	end

 	subject { @url }


 	it { should respond_to(:original_url) }
 	it { should respond_to(:shortened_url) }
 	its(:original_url) { should eq("www.example.com/somethingelse") }
	its(:shortened_url) { should eq("55891a1") }
	it { should validate_presence_of(:original_url) }
 	

 	describe "when original_url is not unique" do
		before { same_url = @url.dup }

 		same_url.should_not be_valid
 	end

end
