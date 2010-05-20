require 'test_helper'

class PokemonsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokemons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokemon" do
    assert_difference('Pokemon.count') do
      post :create, :pokemon => { }
    end

    assert_redirected_to pokemon_path(assigns(:pokemon))
  end

  test "should show pokemon" do
    get :show, :id => pokemons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pokemons(:one).to_param
    assert_response :success
  end

  test "should update pokemon" do
    put :update, :id => pokemons(:one).to_param, :pokemon => { }
    assert_redirected_to pokemon_path(assigns(:pokemon))
  end

  test "should destroy pokemon" do
    assert_difference('Pokemon.count', -1) do
      delete :destroy, :id => pokemons(:one).to_param
    end

    assert_redirected_to pokemons_path
  end
end
