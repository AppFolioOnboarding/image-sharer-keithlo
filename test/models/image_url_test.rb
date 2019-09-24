require 'test_helper'

class ImageUrlTest < ActiveSupport::TestCase

  test "presence of url" do
    image_url = ImageUrl.new
    assert_not image_url.save
  end

  test "must have a properly formatted url" do
    image_url = ImageUrl.new
    image_url.url = 'faux.url'
    assert_not image_url.save
  end

end


