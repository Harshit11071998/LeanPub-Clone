test "Can't delete book in cart" do
  assert_difference("Book.count", 0) do
    delete_book_url(books(:two))
  end
  assert_redirected_to books_url
end
