require 'menu'

describe Menu do
  describe "#initialize" do
    it "should initialize a class with a menu of food items" do
      expect(subject.food).to include("Hot Wings")
    end
  end
end
