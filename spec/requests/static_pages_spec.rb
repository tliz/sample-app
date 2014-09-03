require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "GET /static_pages" do
    #it "works! (now write some real specs)" do
     # get static_pages_index_path
      #expect(response.status).to be(200)

      it "should have the content 'Sample App'" do
      		getsx static_pages_index_path
      		expect(response.status).to be('Sample App')
      	#visit '/static_pages/home'
      	#expect(page).to have_content('Sample App')

    end
  end
end
