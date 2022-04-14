require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "index should filter results with query" do
    get restaurants_url(query: "Taco")
    assert_select "a", text: restaurants(:taco_bell).name
    assert_select "a", text: restaurants(:mcdonalds).name, count: 0
  end

  test "index should render all results" do
    get restaurants_url
    assert_select "a", text: restaurants(:taco_bell).name
    assert_select "a", text: restaurants(:mcdonalds).name
  end
end
