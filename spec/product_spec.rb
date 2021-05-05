require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

   it 'must have valid attributes' do
      @category = Category.new
      params = {
      name: 'Miss Lucy',
      description: 'Miss Lucy had a steamboat, the steamboat had a bell (ding ding)',
      quantity: 1,
      category: @category,
      price_cents: 100000
      }
      expect(Product.new(params)).to be_valid
    end

  it 'must have a name' do
      @category = Category.new
      params = {
      name: 'Miss Lucy',
      description: 'Miss Lucy had a steamboat, the steamboat had a bell (ding ding)',
      quantity: 1,
      category: @category,
      price_cents: 100000
      }
      expect(Product.new(params)).to be_valid
    end

  it 'must have a description' do
      @category = Category.new
      params = {
      name: 'Miss Lucy',
      description: 'Miss Lucy had a steamboat, the steamboat had a bell (ding ding)',
      quantity: 5,
      category: @category,
      price_cents: 100000
      }
      expect(Product.new(params)).to be_valid
    end

  it 'must have a quantity' do
      @category = Category.new
      params = {
      name: 'Miss Lucy',
      description: 'Miss Lucy had a steamboat, the steamboat had a bell (ding ding)',
      quantity: 5,
      category: @category,
      price_cents: 100000
      }
      expect(Product.new(params)).to be_valid
    end

  it 'must have a price' do
      @category = Category.new
      params = {
      name: 'Miss Lucy',
      description: 'Miss Lucy had a steamboat, the steamboat had a bell (ding ding)',
      quantity: 5,
      category: @category,
      price_cents: 100000
      }
      expect(Product.new(params)).to be_valid
    end
  end
end