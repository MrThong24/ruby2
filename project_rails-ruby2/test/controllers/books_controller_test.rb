require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { ghichu_263: @book.ghichu_263, hoten_263: @book.hoten_263, lop_263: @book.lop_263, mahs_263: @book.mahs_263, masanh_263: @book.masanh_263, ngaymuon_263: @book.ngaymuon_263, ngaytra_263: @book.ngaytra_263, soBM_263: @book.soBM_263, tensach_263: @book.tensach_263, tentacgia_263: @book.tentacgia_263 } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { ghichu_263: @book.ghichu_263, hoten_263: @book.hoten_263, lop_263: @book.lop_263, mahs_263: @book.mahs_263, masanh_263: @book.masanh_263, ngaymuon_263: @book.ngaymuon_263, ngaytra_263: @book.ngaytra_263, soBM_263: @book.soBM_263, tensach_263: @book.tensach_263, tentacgia_263: @book.tentacgia_263 } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
