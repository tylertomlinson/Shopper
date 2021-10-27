require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'Validations' do
    it { validate_presence_of(:email) }
    it { validate_presence_of(:password) }
  end

  describe 'Assocations' do
    it { should have_many(:user_recipes) }
    it { should have_many(:recipes).through(:user_recipes) }
  end
end
