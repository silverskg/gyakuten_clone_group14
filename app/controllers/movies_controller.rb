class MoviesController < ApplicationController

  def index
    @default_categories = ['Basic', 'Git', 'Ruby', 'Ruby on Rails']
    @search_category = params[:category] || @default_categories
    @movies = Movie.where(category: @search_category).page(params[:page])
    @search_movies = Movie.where(category: @default_category)
  end
  
end
