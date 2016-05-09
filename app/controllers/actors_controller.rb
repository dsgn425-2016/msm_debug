class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id] })
  end

  def new_form
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:the_dob]
    @actor.name = params[:the_name]
    @actor.bio = params[:the_bio]
    @actor.image_url = params[:the_image_url]

    @actor.save

    render("show")
  end

  def edit_form
    @actor = Actor.find_by({ :id => params[:id] })
  end

  def update_row
    @actor = Actor.find_by({ :id => params[:id] })

    @actor.dob = params[:the_dob]
    @actor.name = params[:the_name]
    @actor.bio = params[:the_bio]
    @actor.image_url = params[:the_image_url]

    @actor.save

    render("show")
  end

  def destroy
    @actor = Actor.find_by({ :id => params[:id] })

    @actor.destroy
  end
end
