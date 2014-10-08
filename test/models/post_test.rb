require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "create a post with a comment should affiliate first_comment_id" do

    p = Post.new(:title => 'test')
    c = p.comments.build(:content => 'test2')
    p.save

    assert_equal(c.id, p.first_comment_id)
  end

end
