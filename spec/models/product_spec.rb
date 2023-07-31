require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validates :name, presence: true
    # validates :price, presence: true
    # validates :quantity, presence: true
    # validates :category, presence: true

    before do
      @category = Category.new(:name => "Trees", id: 1)
      @product = Product.new(:name => "Birch", :price => 19.99, :quantity => 10, :category_id => @category.id)
    end

    it("Is a product with proper fields") do
      
    end

    it("Has a name that was set") do
      expect(@product.name).to eql("Birch")
    end

    it("Has a price that was set") do
      expect(@product.price.fractional/100.00).to eql(19.99)
    end

    it("Has a quantity that was set") do
      expect(@product.quantity).to eql(10)
    end

    it("Has a cateogry that was set") do
      expect(@product.category_id).to eql(1)
    end

    



  end
end
