class MoviesController < ApplicationController
  def index
    all_movies = Movie.all
    movies_reverse = all_movies.reverse
    @movies = movies_reverse
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    m = Movie.new
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.image_url = params[:image_url]
    m.director_id = params[:director_id]
    m.save
    redirect_to("/movies")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def update_row
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]
    @movie.save
    render("show.html.erb")
  end

  def destroy
    m = Movie.find_by({ :id => params[:id]})
    @movie = m
    m.destroy
  end
end
