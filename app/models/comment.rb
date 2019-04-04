class Comment < ApplicationRecord
  has_many :opinions, dependent: :destroy

  def self.search(search)
    if search
      where(['title LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
