require "application_system_test_case"

class ReitingsTest < ApplicationSystemTestCase
  setup do
    @reiting = reitings(:one)
  end

  test "visiting the index" do
    visit reitings_url
    assert_selector "h1", text: "Reitings"
  end

  test "should create reiting" do
    visit reitings_url
    click_on "New reiting"

    fill_in "Id tovar", with: @reiting.id_tovar
    fill_in "Reiting", with: @reiting.reiting
    click_on "Create Reiting"

    assert_text "Reiting was successfully created"
    click_on "Back"
  end

  test "should update Reiting" do
    visit reiting_url(@reiting)
    click_on "Edit this reiting", match: :first

    fill_in "Id tovar", with: @reiting.id_tovar
    fill_in "Reiting", with: @reiting.reiting
    click_on "Update Reiting"

    assert_text "Reiting was successfully updated"
    click_on "Back"
  end

  test "should destroy Reiting" do
    visit reiting_url(@reiting)
    click_on "Destroy this reiting", match: :first

    assert_text "Reiting was successfully destroyed"
  end
end
