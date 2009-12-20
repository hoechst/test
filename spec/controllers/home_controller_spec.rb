require 'spec_helper'

describe HomeController do
  integrate_views
  
  before(:each) do
    @base_title = "MyApp"
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'index'
      response.should have_tag("title", @base_title + " | Index")
    end

  end
end
