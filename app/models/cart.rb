class Cart < ApplicationRecord
    belongs_to :user
    has_many :positions
    has_many :books, throught: :positions
end
