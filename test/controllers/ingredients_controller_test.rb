require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)
  end

  test "should go to index" do
    get ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_url
    assert_response :success
  end

  test "should create new ingredient" do
    assert_difference('Ingredient.count') do
      post ingredients_url, params: { ingredient: { amount: @ingredient.amount, ingredient_name: @ingredient.ingredient_name, recipe_id: @ingredient.recipe_id, unit: @ingredient.unit } }
    end

    assert_redirected_to ingredient_url(Ingredient.last)
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient)
    assert_response :success
  end

  test "should go to edit screen" do
    get edit_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should update ingredient" do
    patch ingredient_url(@ingredient), params: { ingredient: { amount: @ingredient.amount, ingredient_name: @ingredient.ingredient_name, recipe_id: @ingredient.recipe_id, unit: @ingredient.unit } }
    assert_redirected_to ingredient_url(@ingredient)
  end

  test "should delete ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete ingredient_url(@ingredient)
    end

    assert_redirected_to ingredients_url
  end
end
