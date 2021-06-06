class Book < ApplicationRecord
    has_many :carts, through: :positions
    has_many :positions
end
