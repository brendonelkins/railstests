require "test_helper"

class RecipeFlowTest < ActionDispatch::IntegrationTest

  setup do
    @recipe = recipes(:recipe1)
  end

  test "can see the recipe index" do
    get "/recipes"
    assert_select "h1"
  end

  test "can create new recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { author_id: @recipe.author_id, comment: @recipe.comment, difficulty: @recipe.difficulty, recipe_name: @recipe.recipe_name } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should see edit screen" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  
end
