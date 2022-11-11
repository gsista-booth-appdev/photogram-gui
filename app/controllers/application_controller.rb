class ApplicationController < ActionController::Base
  def homepage
    # render({ :template => "misc_templates/home" })
    next_url = "/users"

    redirect_to(next_url)
  end
end
