require 'spec_helper'

describe "messages/edit.html.haml" do
  before(:each) do
    assigns[:message] = mock_model(Message).as_null_object
  end
  
  it "renders the messages/form" do
    template.should_receive(:render).with(
      :partial => "form", :locals => { :message => assigns[:message] }
    ) 
    render
  end
  
  
end