class Link < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true

  def upvote
    increment!(:upvotes)
  end

  def score
    upvotes - downvotes
  end
end
