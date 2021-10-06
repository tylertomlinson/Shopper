require 'rails_helper'

RSpec.describe 'recipe service' do
  it 'exists' do
    service = RecipeService.new
    expect(service).to be_instance_of(RecipeService)
  end
end
