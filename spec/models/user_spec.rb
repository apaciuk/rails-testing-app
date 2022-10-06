require 'rails_helper'

RSpec.describe User, type: :model do
      let(:user) { build(:user) }
      # Progressive types of user tests
      describe "user" do
          it "returns true if the user is valid" do
            expect(user).to be_valid
          end
      end
 end
