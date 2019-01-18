require 'cafe'

describe Cafe do
  describe '#initialize' do
    it 'should initialize a cafe with a menu' do
      expect(subject.menu.menu).to include("Hot Wings")
    end
  end

end
