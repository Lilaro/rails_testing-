class UpvotesController < ApplicationController

  def create
    link = Link.find(params[:link_id])

    link.upvote
    
    redirect_back fallback_location: links_url
  end

end