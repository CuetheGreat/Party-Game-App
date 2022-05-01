require 'rails_helper'

RSpec.describe Card, type: :model do
  describe '.new' do
    before do
      @category = Category.new(name: 'Test Category')
      @card = Card.new(category: @category, action: 'Spin around', intensity: 1)
    end
    it 'Has a category' do
      expect(@card.category.name).to eq('Test Category')
    end
    it 'Has an action' do
      expect(@card.action).to eq('Spin around')
    end
    it 'Has an intensity rating' do
      expect(@card.intensity).to eq(1)
    end
  end
end
