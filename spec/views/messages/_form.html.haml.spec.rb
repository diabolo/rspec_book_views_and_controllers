require 'spec_helper'
class Message; end
describe "messages/_form.html.haml" do
  
  before(:each) do
    @message = mock_model(Message).as_new_record.as_null_object    
  end
  
  context "message is a new record" do
    it "renders a form to create a message" do
      render :locals => { :message => @message }
      response.should have_selector("form", :method => "post", :action => messages_path) do |form|
        form.should have_selector("input[type=submit]")
      end
    end
  end

  context "message is an existing record" do
    it "renders a form to update a message" do
      render :locals => { :message => @message }
      response.should have_selector("form", :method => "post", :action => messages_path) do |form|
        form.should have_selector("input[type=submit]")
      end
    end
  end
  
  it "renders a text field for the message title" do 
    @message.stub(:title).and_return("the title") 
    render :locals => { :message => @message }
    response.should have_tag("form") do
      with_tag("input", :type => "text", :name => "message[title]", :value => "the title")
    end 
  end

  it "renders a text area for the message text" do 
    @message.stub(:text).and_return("the message") 
    render  :locals => { :message => @message }
    response.should have_selector("form") do |form|
      form.should have_selector("textarea", :name => "message[text]", :content => "the message")
    end
  end
  
end