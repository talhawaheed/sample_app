
require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    before{ visit root_path}

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      expect(page).to have_title("#{base_title} ")
    end

    it "should not have a custom page title" do
      #visit '/static_pages/home'
      #visit root_path
      expect(page).to have_title('| Home')
    end
  end

  describe "Help Page" do

  	it "should have the content 'Help'" do
  		#visit '/static_pages/help'
      visit help_path
      
  		expect(page).to have_content('Help')
  	end
  	it "should have the title 'Help'" do
      #visit '/static_pages/help'
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      #visit '/static_pages/about'
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About'" do
    	#visit '/static_pages/about'
      visit about_path
    	expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      #visit '/static_pages/contact'
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact'" do
      #visit '/static_pages/contact'
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end