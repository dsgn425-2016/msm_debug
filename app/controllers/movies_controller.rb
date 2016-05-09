class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @movie_id = params[:id]
    @movie_title = params[:title]
    @movie_year = params[:year]
    @movie_duration = params[:duration]
    @movie_description = params[:description]
    @movie_image_url = params[:image_url]
    @movie_director_id = params[:director_id]

    render("show")
  end

  def new_form

  end

  def create_row
    @movie = Movie.new
    @movie_id = params[:the_id]
    @movie_title = params[:the_title]
    @movie_year = params[:the_year]
    @movie_duration = params[:the_duration]
    @movie_description = params[:the_description]
    @movie_image_url = params[:the_image_url]
    @movie_director_id = params[:the_director_id]
    @movie_save

    render("show")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie_id = params[:id]
    @movie_title = params[:title]
    @movie_year = params[:year]
    @movie_duration = params[:duration]
    @movie_description = params[:description]
    @movie_image_url = params[:image_url]
    @movie_director_id = params[:director_id]

    render("show")
  end

  def destroy
    movie = Movie.find(params[:id])

    movie.destroy
  end
end
