require "spec_helper"

describe "users/show.html.haml" do

  before(:each) do
    @attr = { :name => "Bryan Belyk", :email => "bbbelyk@gmail.com" }
    assign(:user, stub_model(User, @attr))
    # assign(:title, @attr[:name])
    render
  end

  # title appears to be under the controllers jurisdiction
  #it "should have the right title" do
  #  puts rendered.to_s
  #  rendered.should have_selector(:title, :content => @attr[:name])
  #end

  it "should include the user's name" do
    rendered.should contain(@attr[:name])
    #rendered.should contain(@attr[:email])
  end

  it "should have a profile image" do
    rendered.should have_selector("h1>img", :class => "gravatar" ) 
  end

end