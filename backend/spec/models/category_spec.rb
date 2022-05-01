require 'rails_helper'

describe Category do
  describe '#new' do
    context 'Creates a valid object with a name' do
      before do
        @category = Category.new(name: 'Test')
      end
      it 'Has a name' do
        expect(@category.name).to eq('Test')
      end
    end
  end
end
