
require "ppt"

describe Ppt do
  
  it "Debe existir una tirada para el humano" do
    Ppt.new().respond_to?("humano_tirada").should == true
  end
  
  it "Debe existir una tirada para la maquina" do
    Ppt.new().respond_to?("maquina_tirada").should == true
  end
  
end
