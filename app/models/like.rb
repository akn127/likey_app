class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def liked_by?(post_id)
    likes.where(post_id: post_id).exests?
  end
end
