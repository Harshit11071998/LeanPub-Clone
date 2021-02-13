class Book < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy
  # mount_uploader :coverimage, PhotoUploader
  has_one_attached :coverimage
  has_one_attached :pdf_file
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :title, presence: true

  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line Items present")
      throw :abort
    end
  end
end
