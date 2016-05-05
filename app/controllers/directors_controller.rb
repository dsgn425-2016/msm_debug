class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by ({ :id => params[:id]})

    render("show_details.html.erb")
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show_details.html.erb")
  end

  def edit_form
    @director = Director.find_by ({ :id => params[:id]})

    render("edit_form.html.erb")
  end

  def update_row
    @director = Director.find_by ({ :id => params[:id]})

    @director.dob = params[:the_dob]
    @director.name = params[:the_name]
    @director.bio = params[:the_bio]
    @director.image_url = params[:the_image_url]

    @director.save

    render("show_details.html.erb")
  end

  def destroy
    @director = Director.find_by ({ :id => params[:id]})

    @director.destroy

    render("destroy.html.erb")
  end
end
