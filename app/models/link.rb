class Link < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true

  def upvote
    increment!(:upvotes)
  end
end
