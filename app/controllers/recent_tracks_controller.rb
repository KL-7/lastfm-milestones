class RecentTracksController < ApplicationController

  def create
    begin
      @user = Scrobbler::User.new :name => params[:username]
      @tracks = @user.recent_tracks :page => params[:page].to_i
      @tracks.map(&:artist).map(&:load_info)
    rescue Scrobbler::ApiError => e
      @error = e.message
    end
  end

end
