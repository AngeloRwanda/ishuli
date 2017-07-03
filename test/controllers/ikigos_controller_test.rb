require 'test_helper'

class IkigosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ikigo = ikigos(:one)
  end

  test "should get index" do
    get ikigos_url
    assert_response :success
  end

  test "should get new" do
    get new_ikigo_url
    assert_response :success
  end

  test "should create ikigo" do
    assert_difference('Ikigo.count') do
      post ikigos_url, params: { ikigo: { name: @ikigo.name } }
    end

    assert_redirected_to ikigo_url(Ikigo.last)
  end

  test "should show ikigo" do
    get ikigo_url(@ikigo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ikigo_url(@ikigo)
    assert_response :success
  end

  test "should update ikigo" do
    patch ikigo_url(@ikigo), params: { ikigo: { name: @ikigo.name } }
    assert_redirected_to ikigo_url(@ikigo)
  end

  test "should destroy ikigo" do
    assert_difference('Ikigo.count', -1) do
      delete ikigo_url(@ikigo)
    end

    assert_redirected_to ikigos_url
  end
end
