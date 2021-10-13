require 'rails_helper'

RSpec.describe 'recipe service' do
  it 'exists' do
    service = RecipeService.new
    expect(service).to be_instance_of(RecipeService)
  end

  it 'can return search with user inputed keyword' do
    service = RecipeService.new

    expect(service.recipe_search('chicken')).to be_instance_of(Hash)
  end
end
