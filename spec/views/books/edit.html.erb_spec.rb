require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyString",
      author_price: 1.5,
      selling_price: 1.5,
      book_index: "MyText",
      about: "MyText",
      book_category: "MyString",
      youtube_link: "MyString",
      retired: false,
      published: false,
      user: nil
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author_price]"

      assert_select "input[name=?]", "book[selling_price]"

      assert_select "textarea[name=?]", "book[book_index]"

      assert_select "textarea[name=?]", "book[about]"

      assert_select "input[name=?]", "book[book_category]"

      assert_select "input[name=?]", "book[youtube_link]"

      assert_select "input[name=?]", "book[retired]"

      assert_select "input[name=?]", "book[published]"

      assert_select "input[name=?]", "book[user_id]"
    end
  end
end
