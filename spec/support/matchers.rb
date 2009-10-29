Spec::Matchers.define :have_button do |href| 
  match do |response|
    extend Webrat::Matchers
    response.should have_selector("a.button", :href => href)
  end 
end