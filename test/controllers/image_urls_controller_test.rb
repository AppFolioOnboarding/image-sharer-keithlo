require 'test_helper'

class ImageUrlsControllerTest < ActionDispatch::IntegrationTest

  def test_destroy
    imageUrl = ImageUrl.create!(url: 'https://bcefiles.allaboutbirds.org/home/wp-content/uploads/2019/05/IBunting-Kinderman-58737651-FI.gif', tag_list: 'tag0')
    assert_difference('ImageUrl.count', -1) do
      delete image_url_path(imageUrl.id)
    end
    assert_redirected_to image_urls_path
    assert_nil ImageUrl.find_by(id: imageUrl.id)
  end

end
