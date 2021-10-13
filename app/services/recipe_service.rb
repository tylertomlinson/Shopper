class RecipeService < BaseService
  def recipe_search(keyword)
    response = conn('https://api.edamam.com').get('/api/recipes/v2') do |f|
      f.params[:type] = 'public'
      f.params[:q] = keyword
      f.params[:app_id] = ENV['application_id']
      f.params[:app_key] = ENV['application_key']
    end
    json(response)
  end
end
