require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "messages/show.html.erb" do 
  before(:each) do
    @message = stub("Message")
    assigns[:message] = @message
  end
  it "should display the text of the message" do 
    @message.stub!(:text).and_return "Hello world!" 
    render "messages/show.html.haml" 
    response.should contain("Hello world!")
  end 
end