class UpvotesController < ApplicationController

  def create
    link = Link.find(params[:link_id])
    link.upvotes += 1
    link.save
    redirect_back fallback_location: links_url
  end

end