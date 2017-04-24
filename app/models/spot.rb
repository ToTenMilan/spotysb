class Spot < ApplicationRecord
  has_many :comments, dependent: :destroy
end
