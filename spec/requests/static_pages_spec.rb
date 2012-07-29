require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do
	
  	it "should have the h1 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Home')
    end
    	it "should have the right title" do
    		visit '/static_pages/home'
			page.should have_selector('title', :text => "Kittens Rule, Inc. | Home")
		end
  end
  
  describe "Help page" do

		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
   	end
   		it "should have the right title" do
    		visit '/static_pages/help'
			page.should have_selector('title', :text => "Kittens Rule, Inc. | Help")
  	end
	end
  
  describe "About page" do
		
    it "should have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1',	:text => 'About Us')
		end

   		it "should have the right title" do
    		visit '/static_pages/about'
			page.should have_selector('title', :text => "Kittens Rule, Inc. | About Us")
		end
 	end

    describe "Contact page" do
    
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

      it "should have the right title" do
        visit '/static_pages/contact'
      page.should have_selector('title', :text => "Kittens Rule, Inc. | Contact Us")
    end
  end
end
