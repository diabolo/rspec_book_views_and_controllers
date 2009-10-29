require 'spec_helper'

describe "messages/edit.html.haml" do
  before(:each) do
    assigns[:message] = mock_model(Message).as_null_object
  end
    
  it_should_behave_like "a template that renders the messages/form partial"
  
end