class RecentTracksController < ApplicationController

  def create
    @user = Scrobbler::User.new :name => params[:username]
    @tracks = @user.recent_tracks :page => params[:page].to_i
  end

end
