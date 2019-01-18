require 'menu'

describe Menu do

  describe "#initialize" do
    it "should initialize a class with a menu of food items" do
      expect(subject.menu).to include("Hot Wings")
    end
  end
  
  describe '#show_menu' do
    it "should allow a customer to see menu items and their price" do
      expect(subject.show_menu).to eq subject.menu
    end
  end

  describe '#select_item' do
    it 'should allow customer to see a price of a selected menu item' do
      expect(subject.select_item("Coke")).to eq 1.00
    end
  end
end
