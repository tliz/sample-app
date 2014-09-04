require 'rails_helper'
require 'spec_helper'

RSpec.describe "UserPages", :type => :request do
	subject { page }
  describe "GET /user_pages" do
    #it "works! (now write some real specs)" do
     # get user_pages_index_path
      #expect(response.status).to be(200)
    #end

    before { visit signup_path }

    it { should have_content('Sign Up') }
    it { should have_title(full_title( 'Sign Up' )) }

  end
end
