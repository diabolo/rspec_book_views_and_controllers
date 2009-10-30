require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MessagesController, "POST create" do
  before(:each) do
    @message = mock_model(Message, :save => nil)
    Message.stub(:new).and_return @message  
  end
  
  it "creates a new message" do
    Message.should_receive(:new).with("text" => "wibble")
    post :create, :message => { "text" => 'wibble'}
  end

  it "saves the message" do
    @message.should_receive(:save)
    post :create
  end

  context "when the message saves successfully" do 
    before(:each) do
      @message.stub(:save).and_return(true) 
    end
  
    it "sets a flash[:notice] message" do
      post :create
      flash[:notice].should == "Message saved"
    end
     
    
    it "redirects to the messages index"
  
  end
end