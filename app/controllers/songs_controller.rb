class SongsController < ApplicationController

  before_action :authenticate_user!

  def index
    songs = current_user.songs
    to_render = [current_user, songs]
    render json: to_render
  end

end
