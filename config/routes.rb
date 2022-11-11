Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/users", { :controller => "users", :action => "index" })

  get("/users/:path_username", { :controller => "users", :action => "show" })

  get("/photos", { :controller => "photos", :action => "index" })

  get("/photos/:path_id", { :controller => "photos", :action => "show" })

  get("/delete_photo/:path_id", { :controller => "photos", :action => "delete" })

  get("/insert_photo", { :controller => "photos", :action => "create" })

  get("/update_photo/:modify_id", { :controller => "photos", :action => "update" })

  get("/insert_username", { :controller => "users", :action => "create" })

  get("/update_username/:path_username", { :controller => "users", :action => "update" })

  get("/add_comment/:path_id", { :controller => "photos", :action => "add_comment" })
end
