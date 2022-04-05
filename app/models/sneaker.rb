class Sneaker < ApplicationRecord
  belongs_to :user, optional: true, polymorphic: true
end
