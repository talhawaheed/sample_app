
require 'spec_helper'
require 'rails_helper'

describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject {page}

  describe "Home page" do

    before{ visit root_path}

    it {should have_content('Sample App')}

    #it {should have_title("#{base_title}")}
    it {should have_title(full_title(""))}

    it {should have_title('| Home')}

    #it "should not have a custom page title" do
      #visit '/static_pages/home'
      #visit root_path
      #expect(page).to have_title('| Home')
    #end
  end

  describe "Help Page" do

    before{ visit help_path}

    it {should have_content("Help")}
  	
  	it {should have_title(full_title(''))}

  end

  describe "About page" do

    before{ visit about_path}

    it {should have_content('About Us')}
    
    it {should have_title(full_title(''))}    
        
  end

  describe "Contact page" do

    before{ visit contact_path}

    it {should have_content('Contact')}
    
    it {should have_title(full_title(''))}    
    
  end

end