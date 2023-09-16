require "test_helper"

class ReitingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reiting = reitings(:one)
  end

  test "should get index" do
    get reitings_url
    assert_response :success
  end

  test "should get new" do
    get new_reiting_url
    assert_response :success
  end

  test "should create reiting" do
    assert_difference("Reiting.count") do
      post reitings_url, params: { reiting: { id_tovar: @reiting.id_tovar, reiting: @reiting.reiting } }
    end

    assert_redirected_to reiting_url(Reiting.last)
  end

  test "should show reiting" do
    get reiting_url(@reiting)
    assert_response :success
  end

  test "should get edit" do
    get edit_reiting_url(@reiting)
    assert_response :success
  end

  test "should update reiting" do
    patch reiting_url(@reiting), params: { reiting: { id_tovar: @reiting.id_tovar, reiting: @reiting.reiting } }
    assert_redirected_to reiting_url(@reiting)
  end

  test "should destroy reiting" do
    assert_difference("Reiting.count", -1) do
      delete reiting_url(@reiting)
    end

    assert_redirected_to reitings_url
  end
end
