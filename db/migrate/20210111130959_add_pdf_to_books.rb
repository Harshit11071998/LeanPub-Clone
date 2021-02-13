class AddPdfToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :pdf_file, :string
  end
end
