class Comment < ApplicationRecord
  has_many :opinions, dependent: :destroy
end
