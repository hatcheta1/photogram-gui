class CommentsController < ApplicationController
  def create
    c = Comment.new
    c.photo_id = params.fetch("photo_id")
    c.author_id = params.fetch("author_id")
    c.body = params.fetch("comment_body")

    c.save

    redirect_to("/photos/#{params.fetch("photo_id")}")
  end
end
