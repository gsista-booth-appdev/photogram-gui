class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def show
    url_username = params.fetch("path_username")

    matching_usernames = User.where({ :username => url_username })

    @the_user = matching_usernames.first

    # if the_user == nil
    #   redirect_to("/404")
    # else
    render({ :template => "user_templates/show.html.erb" })
    # end
  end

  def create
    input_username = params.fetch("query_username")

    a_new_username = User.new
    a_new_username.username = input_username

    a_new_username.save

    # render({ :template => "photo_templates/create.html.erb" })
    next_url = "/users/" + a_new_username.username

    redirect_to(next_url)

    #render({ :template => "user_templates/create.html.erb" })
  end
end
