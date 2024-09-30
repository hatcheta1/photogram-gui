Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:input_username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })
  post("/update_user/:input_username", { :controller => "users", :action => "update" })

  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:photo_id", { :controller => "photos", :action => "show" })
  get("/delete_photo/:photo_id", { :controller => "photos", :action => "destroy" })
  post("/add_photo", { :controller => "photos", :action => "create" })
  post("/update_photo/:photo_id", { :controller => "photos", :action => "update" })

  post("/add_comment", { :controller => "comments", :action => "create" })
end
