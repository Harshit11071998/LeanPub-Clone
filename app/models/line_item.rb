class LineItem < ApplicationRecord
  belongs_to :book
  belongs_to :cart, optional: true
  belongs_to :order, optional: true

  def total_price
    book.selling_price * quantity
  end
end
