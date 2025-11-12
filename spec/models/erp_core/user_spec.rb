require "rails_helper"

RSpec.describe ErpCore::User, type: :model do
  subject(:user) { build(:erp_core_user) }

  describe "validations" do
    it "is valid with valid attributes" do
      expect(user).to be_valid
    end

    it "is invalid without an email" do
      user.email = nil
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("no puede estar en blanco")
    end

    it "is invalid without a password" do
      user.password = nil
      expect(user).not_to be_valid
      expect(user.errors[:password]).to include("no puede estar en blanco")
    end
  end
end
