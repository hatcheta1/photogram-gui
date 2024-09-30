Rails.application.routes.draw do
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/add_user", { :controller => "users", :action => "create" })

  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:photo_id", { :controller => "photos", :action => "show" })
  get("delete_photo/:photo_id", { :controller => "photos", :action => "destroy" })
  post("/add_photo", { :controller => "photos", :action => "create" })
  post("update_photo/:photo_id", { :controller => "photos", :action => "update" })
end
