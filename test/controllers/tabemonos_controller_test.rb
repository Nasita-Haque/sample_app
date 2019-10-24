require 'test_helper'

class TabemonosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tabemono = tabemonos(:one)
  end

  test "should get index" do
    get tabemonos_url
    assert_response :success
  end

  test "should get new" do
    get new_tabemono_url
    assert_response :success
  end

  test "should create tabemono" do
    assert_difference('Tabemono.count') do
      post tabemonos_url, params: { tabemono: { name: @tabemono.name, rank: @tabemono.rank } }
    end

    assert_redirected_to tabemono_url(Tabemono.last)
  end

  test "should show tabemono" do
    get tabemono_url(@tabemono)
    assert_response :success
  end

  test "should get edit" do
    get edit_tabemono_url(@tabemono)
    assert_response :success
  end

  test "should update tabemono" do
    patch tabemono_url(@tabemono), params: { tabemono: { name: @tabemono.name, rank: @tabemono.rank } }
    assert_redirected_to tabemono_url(@tabemono)
  end

  test "should destroy tabemono" do
    assert_difference('Tabemono.count', -1) do
      delete tabemono_url(@tabemono)
    end

    assert_redirected_to tabemonos_url
  end
end
