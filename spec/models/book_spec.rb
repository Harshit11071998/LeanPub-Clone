require "rails_helper"

RSpec.describe Book, type: :model do
  current_user = User.first_or_create!(email: "harry@gmail.com", password: "password", password_confirmation: "password")

  context "Association test" do
    it { should belong_to :user }
    it { should validate_presence_of :title }
  end
end
