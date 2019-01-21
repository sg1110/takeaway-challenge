require 'order'

describe Order do
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
  # let(:takeaway) {double :takeaway_class, add: 4}

  describe '#to_pay' do
    it "should sum up total to pay" do
      subject.add_item("Coke",4)
      expect(subject.to_pay).to eq 4.0
    end
  end
end
