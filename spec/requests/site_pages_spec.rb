require "spec_helper.rb"

describe "Site pages" do 

	subject { page }
	describe "home page" do
		before { visit root_path }

		it { should have_selector('div', text: 'urlbits') }
		it { should have_selector('div', text: 'shorten your URLs now') }

	end

end