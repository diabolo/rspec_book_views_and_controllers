require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "messages/show.html.erb" do 
  before(:each) do
    @message = stub("Message")
    assigns[:message] = @message
    @message.stub!(:text).and_return "Hello world!" 
    render "messages/show.html.haml" 
  end
  it "should display the text of the message" do 
    response.should contain("Hello world!")
  end 
  
  it "has a button to create a message" do 
    response.should have_button(new_message_path)
  end
end

