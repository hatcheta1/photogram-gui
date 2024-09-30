class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all.order({ :created_at => :desc })

    render({ :template => "photo_templates/index"} )
  end

  def show
    the_id = params.fetch("photo_id")
    @the_photo = Photo.where({ :id => the_id }).first

    render({ :template => "photo_templates/show" })
  end

  def destroy
    the_id = params.fetch("photo_id")

    the_photo = Photo.where({ :id => the_id }).first

    the_photo.destroy

    redirect_to("/photos")
  end

  def create
    p = Photo.new
    p.image = params.fetch("image_url")
    p.caption = params.fetch("caption")
    p.owner_id = params.fetch("owner_id")

    p.save

    redirect_to("/photos")
  end

  def update
    the_id = params.fetch("photo_id")
    the_photo = Photo.where({ :id => the_id }).first

    the_photo.image = params.fetch("image_url")
    the_photo.caption = params.fetch("caption")

    the_photo.save

    redirect_to("/photos")
  end
end
