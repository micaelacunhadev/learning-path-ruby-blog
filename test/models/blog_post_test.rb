require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
 
  test "draft? returns true for draft blog post" do
    #assert BlogPost.new(published_at: nil).draft?
    assert blog_posts(:draft).draft?
  end

  test "draft? returns false for published blog post" do
    refute blog_posts(:published).draft?
  end

  test "draft? returns false for scheduled blog post" do
    refute blog_posts(:scheduled).draft?
  end

  test "published? returns true for published blog post" do
    assert blog_posts(:published).published?
  end

  test "published? returns false for draft blog post" do
    refute blog_posts(:draft).published?
  end

  test "published? returns false for scheduled blog post" do
    refute blog_posts(:scheduled).published?
  end
end
