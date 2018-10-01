require 'test_helper'

class TodolistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todolist = todolists(:one)
  end

  test "should get index" do
    get todolists_url
    assert_response :success
  end

  test "should get new" do
    get new_todolist_url
    assert_response :success
  end

  test "should create todolist" do
    assert_difference('Todolist.count') do
      post todolists_url, params: { todolist: { descricao: @todolist.descricao, titulo: @todolist.titulo } }
    end

    assert_redirected_to todolist_url(Todolist.last)
  end

  test "should show todolist" do
    get todolist_url(@todolist)
    assert_response :success
  end

  test "should get edit" do
    get edit_todolist_url(@todolist)
    assert_response :success
  end

  test "should update todolist" do
    patch todolist_url(@todolist), params: { todolist: { descricao: @todolist.descricao, titulo: @todolist.titulo } }
    assert_redirected_to todolist_url(@todolist)
  end

  test "should destroy todolist" do
    assert_difference('Todolist.count', -1) do
      delete todolist_url(@todolist)
    end

    assert_redirected_to todolists_url
  end
end
