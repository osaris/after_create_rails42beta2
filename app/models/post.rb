class Post < ActiveRecord::Base

  has_many :comments

  after_create :set_first_comment_id

  private

  def set_first_comment_id
    update_attribute(:first_comment_id, self.comments.first.id)
  end

end
