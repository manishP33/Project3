require 'test_helper'

class NaturalDisasterCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @natural_disaster_category = natural_disaster_categories(:one)
  end

  test "should get index" do
    get natural_disaster_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_natural_disaster_category_url
    assert_response :success
  end

  test "should create natural_disaster_category" do
    assert_difference('NaturalDisasterCategory.count') do
      post natural_disaster_categories_url, params: { natural_disaster_category: { photo_url: @natural_disaster_category.photo_url, title: @natural_disaster_category.title } }
    end

    assert_redirected_to natural_disaster_category_url(NaturalDisasterCategory.last)
  end

  test "should show natural_disaster_category" do
    get natural_disaster_category_url(@natural_disaster_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_natural_disaster_category_url(@natural_disaster_category)
    assert_response :success
  end

  test "should update natural_disaster_category" do
    patch natural_disaster_category_url(@natural_disaster_category), params: { natural_disaster_category: { photo_url: @natural_disaster_category.photo_url, title: @natural_disaster_category.title } }
    assert_redirected_to natural_disaster_category_url(@natural_disaster_category)
  end

  test "should destroy natural_disaster_category" do
    assert_difference('NaturalDisasterCategory.count', -1) do
      delete natural_disaster_category_url(@natural_disaster_category)
    end

    assert_redirected_to natural_disaster_categories_url
  end
end
