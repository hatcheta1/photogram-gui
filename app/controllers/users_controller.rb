class UsersController < ApplicationController
  def index
    @list_of_users = User.all.order({ :username => :asc })

    render({ :template => "user_templates/index" })
  end

  def show
    url_username = params.fetch("username")

    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.first

    if @the_user == nil
      redirect_to("/404")
    else
      render({ :template => "user_templates/show" })
    end
  end
  
  def create
    u = User.new
    u.username = params.fetch("username")

    u.save

    redirect_to("/users")
  end
end
