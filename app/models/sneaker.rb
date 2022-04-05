class Sneaker < ApplicationRecord
  belongs_to :user, optional: true, class_name: 'User', foreign_key: 'user_id'
end
