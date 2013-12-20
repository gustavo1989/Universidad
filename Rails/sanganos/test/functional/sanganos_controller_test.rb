require 'test_helper'

class SanganosControllerTest < ActionController::TestCase
  setup do
    @sangano = sanganos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sanganos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sangano" do
    assert_difference('Sangano.count') do
      post :create, sangano: { apellido: @sangano.apellido, descripcion: @sangano.descripcion, name: @sangano.name }
    end

    assert_redirected_to sangano_path(assigns(:sangano))
  end

  test "should show sangano" do
    get :show, id: @sangano
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sangano
    assert_response :success
  end

  test "should update sangano" do
    put :update, id: @sangano, sangano: { apellido: @sangano.apellido, descripcion: @sangano.descripcion, name: @sangano.name }
    assert_redirected_to sangano_path(assigns(:sangano))
  end

  test "should destroy sangano" do
    assert_difference('Sangano.count', -1) do
      delete :destroy, id: @sangano
    end

    assert_redirected_to sanganos_path
  end
end
