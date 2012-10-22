require "spec_helper.rb"

describe "Site pages" do 

	describe "home page" do
		before { visit root_path }

		it { should have_selector('div', text: 'urlbits') }
	end

end