class Position < ApplicationRecord
    att_accessible :book_id, :cart_id, :quantity
    belongs_to :books
    belongs_to :cart
end
