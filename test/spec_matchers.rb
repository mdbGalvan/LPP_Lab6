# File: spec_matchers.rb

RSpec::Matchers.define :contain do  |element|
  match do |container|
    container.include? element
  end
end

RSpec::Matchers.define :hash_key do |key|
  match do |container|
      container.include? key
  end
end

