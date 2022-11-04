require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Ghichu 263", with: @book.ghichu_263
    fill_in "Hoten 263", with: @book.hoten_263
    fill_in "Lop 263", with: @book.lop_263
    fill_in "Mahs 263", with: @book.mahs_263
    fill_in "Masanh 263", with: @book.masanh_263
    fill_in "Ngaymuon 263", with: @book.ngaymuon_263
    fill_in "Ngaytra 263", with: @book.ngaytra_263
    fill_in "Sobm 263", with: @book.soBM_263
    fill_in "Tensach 263", with: @book.tensach_263
    fill_in "Tentacgia 263", with: @book.tentacgia_263
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Ghichu 263", with: @book.ghichu_263
    fill_in "Hoten 263", with: @book.hoten_263
    fill_in "Lop 263", with: @book.lop_263
    fill_in "Mahs 263", with: @book.mahs_263
    fill_in "Masanh 263", with: @book.masanh_263
    fill_in "Ngaymuon 263", with: @book.ngaymuon_263
    fill_in "Ngaytra 263", with: @book.ngaytra_263
    fill_in "Sobm 263", with: @book.soBM_263
    fill_in "Tensach 263", with: @book.tensach_263
    fill_in "Tentacgia 263", with: @book.tentacgia_263
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
