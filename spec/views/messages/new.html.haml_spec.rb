require File.dirname(__FILE__) + '/../../spec_helper'

class Message; end

describe "messages/new.html.haml" do
  before(:each) do
    assigns[:message] = mock_model(Message).as_new_record.as_null_object    
    assigns[:recent_messages] = [] 
  end
  
  it_should_behave_like "a template that renders the messages/form partial"
     
  it "renders recent messages" do 
    assigns[:recent_messages] = [ 
      mock_model(Message, :text => "Message 1").as_null_object, 
      mock_model(Message, :text => "Message 2").as_null_object ] 
    render 
    response.should have_selector(".recent_messages") do |sidebar|
      sidebar.should have_selector(".message", :content => "Message 1")
      sidebar.should have_selector(".message", :content => "Message 2")
    end
  end
  
  it "renders recent messages" do
    messages = %w(Message\ 1 Message\ 2)
    messages.each do |text|
      assigns[:recent_messages] << mock_model(Message, :text => text).as_null_object 
    end
    render  
    messages.each do |text|
      response.should have_tag(".recent_messages") do
        with_tag(".message", :content => text)
      end
    end
  end
end