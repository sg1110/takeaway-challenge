require 'cafe'

describe Cafe do
  let(:menu)  { double :menu_class, food:{ "Hot Wings" => 5.97,
      "Mozzarella Sticks" => 4.71,
      "Tex-Mex Beef Nachos" => 6.81,
      "Shrimp Poppers" => 5.45,
      "Scrambled Eggs" => 1.00,
      "Vanilla Shake" => 3.50,
      "Nutella Shake" => 99.99,
      "Coffee" => 2.00,
      "Tea" => 1.50,
      "Coke" => 1.00 }}

  describe '#initialize' do
    it 'should initialize a cafe with a menu' do
      expect(subject.menu.food).to include("Hot Wings")
    end
  end

  describe '#show_menu' do
    it "should allow a customer to see menu items and their price" do
      expect(subject.show_menu).to eq subject.menu.food
    end
  end

  # describe '#select_item' do
  #   it 'should allow customer to see a price of a selected menu item' do
  #     expect(subject.select_item("Coke")).to eq 1.00
  #   end
  # end

end
