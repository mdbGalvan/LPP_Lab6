# File: spec_matchers.rb

RSpec::Matchers.define :have_key do |key|
  match do |container|
      container.include? key
  end
end



