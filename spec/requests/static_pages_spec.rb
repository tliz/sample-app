require 'spec_helper'
require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  #describe "GET /static_pages" do
    #it "works! (now write some real specs)" do
      #get static_pages_index_path
      #expect(response.status).to be(200)
    #config.expose_current_running_example_as :example

    let(:base_title) { "Tliz" }
    subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  #test that Help Page exists

  describe "Help page" do
    before { visit help_path }

      it { should have_content('Help') }
      it { should have_title(full_title('Help')) }
  end

  #test that About Page exists
  describe "About page" do
    before { visit about_path }
      it { should have_content('About') }
      it { should have_title(full_title('About Us')) }
  end
  
  #test that Content Page exists
  describe "Content Page" do
    
    it "should have the content 'Content'" do
      visit content_path
      expect(page).to have_content('Content')
    end

    it "should have the title 'Content '" do
      visit content_path
      expect(page).to have_title("#{base_title} | Content")
    end

  end

  #test that Contact Page exists
  describe "Contact page" do
    before { visit contact_path }

      it { should have_content('Contact') }
      it { should have_title(full_title('Contact')) }
  end

end
