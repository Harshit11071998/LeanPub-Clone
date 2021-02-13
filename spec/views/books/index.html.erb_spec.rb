require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author_price: 2.5,
        selling_price: 3.5,
        book_index: "MyText",
        about: "MyText",
        book_category: "Book Category",
        youtube_link: "Youtube Link",
        retired: false,
        published: false,
        user: nil
      ),
      Book.create!(
        title: "Title",
        author_price: 2.5,
        selling_price: 3.5,
        book_index: "MyText",
        about: "MyText",
        book_category: "Book Category",
        youtube_link: "Youtube Link",
        retired: false,
        published: false,
        user: nil
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Book Category".to_s, count: 2
    assert_select "tr>td", text: "Youtube Link".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
