class Book < ApplicationRecord
    has_many :carts, throught: :positions
    has_many :positions
end
