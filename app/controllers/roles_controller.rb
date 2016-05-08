class RolesController < ApplicationController
  def index
    @role = Role.all
  end

  def show
    @role = Role.find_by({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    @role = Role.new
    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    @role.save

    render("show")
  end

  def edit_form
    @role = Role.find_by({ :id => params[:id]})
  end

  def update_row
    @role = Role.find_by({ :id => params[:id]})

    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]

    @role.save

    render("show")
  end

  def delete
    @role = Role.find_by({ :id => params[:id]})
    @role.destroy
    render("delete_role")
  end
end
