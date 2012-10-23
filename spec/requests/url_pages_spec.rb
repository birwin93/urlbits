require "spec_helper.rb"

describe "URL pages" do 

	subject { page }

	describe "creating new url" do
		describe "at home page" do
			before  do
				visit root_path 
				fill_in "original_url", with: "www.example.com"
			end

  		it "should create a new url" do
  			expect { click_button "Create Url" }.to change(Url, :count).by(1)
  		end
		end

		describe "at show page" do
			before do
				@url = Url.create(original_url: "www.google.com")
				visit url_path(@url)
				fill_in "original_url", with: "www.example.com"
			end

  		it "should create a new url" do
  			expect { click_button "Create Url" }.to change(Url, :count).by(1)
  		end
  	end
	end
end