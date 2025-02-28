class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show]

  def index
    @movies = Movie.all
  end

  def show
    @list = List.new
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

end
