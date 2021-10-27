require 'rails_helper'

RSpec.describe Recipe, :type => :model do
  describe 'Validations' do
    it { validate_presence_of(:name) }
    it { validate_presence_of(:image) }
    it { validate_presence_of(:link) }
    it { validate_presence_of(:calories) }
    it { validate_presence_of(:sugar) }
    it { validate_presence_of(:fat) }
    it { validate_presence_of(:type) }
  end

  describe 'Assocations' do
    it { should have_many(:user_recipes) }
    it { should have_many(:users).through(:user_recipes) }
  end
end
