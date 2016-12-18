require 'test_helper'

class TextImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_image = text_images(:one)
  end

  test "should get index" do
    get text_images_url
    assert_response :success
  end

  test "should get new" do
    get new_text_image_url
    assert_response :success
  end

  test "should create text_image" do
    assert_difference('TextImage.count') do
      post text_images_url, params: { text_image: { content: @text_image.content, image: @text_image.image } }
    end

    assert_redirected_to text_image_url(TextImage.last)
  end

  test "should show text_image" do
    get text_image_url(@text_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_image_url(@text_image)
    assert_response :success
  end

  test "should update text_image" do
    patch text_image_url(@text_image), params: { text_image: { content: @text_image.content, image: @text_image.image } }
    assert_redirected_to text_image_url(@text_image)
  end

  test "should destroy text_image" do
    assert_difference('TextImage.count', -1) do
      delete text_image_url(@text_image)
    end

    assert_redirected_to text_images_url
  end
end
