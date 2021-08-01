class PlaylistController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def detail
    @playlist = Playlist.find_by(id: params[:id])
  end

  def new
  end

  def create
    @playlist = Playlist.new(
      name: params[:name],
      description: params[:description],
    )
    @playlists
    if @playlist.save
      flash[:notice] = @playlist.name + "を作成しました"
      redirect_to("/")
    end
  end

  def delete
    @playlist = Playlist.find_by(id: params[:id])
    if @playlist.destroy
      flash[:notice] = @playlist.name + "を削除しました"
      redirect_to("/")
    end
  end
end
