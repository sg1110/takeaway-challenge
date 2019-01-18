require 'cafe'

describe Cafe do
  let(:menu)  { double :menu_class, menu_items:{ "Hot Wings" => 5.97,
      "Mozzarella Sticks" => 4.71,
      "Tex-Mex Beef Nachos" => 6.81,
      "Shrimp Poppers" => 5.45,
      "Scrambled Eggs" => 1.00,
      "Vanilla Shake" => 3.50,
      "Nutella Shake" => 99.99,
      "Coffee" => 2.00,
      "Tea" => 1.50,
      "Coke" => 1.00 }}

  let(:order) {double :order_class, select_item: "Coke", food_on_order: 1.00 }

  # describe '#initialize' do
  #   it 'should initialize a cafe with an Order class' do
  #     expect(order.order).to respond_to food_on_order
  # end

  describe '#show_menu' do
    it "should allow a customer to see menu items and their price" do
      expect(subject.show_menu).to eq menu.menu_items
    end
  end

  describe '#add_to_order' do
    it 'should allow customer to add a food item to their order' do
      subject.add_to_order("Coke", 1)
      expect(subject.order.food_on_order_price).to include 1.00
    end
  end


end
