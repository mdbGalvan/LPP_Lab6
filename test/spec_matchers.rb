
RSpec::Matchers.define :contain do  |element|
  match do |container|
    container.include? element
  end
end