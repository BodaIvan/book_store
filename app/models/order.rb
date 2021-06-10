class Order < ApplicationRecord
    att_accessible :user, user_id
    belongs_to :user
end
