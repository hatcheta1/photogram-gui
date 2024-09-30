class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all.order({ :created_at => :desc })

    render({ :template => "photo_templates/index"} )
  end

  def show
    url_id = params.fetch("photo_id")
    @the_photo = Photo.where({ :id => url_id }).first

    render({ :template => "photo_templates/show" })
  end
end
