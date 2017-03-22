class AppearancesController < ApplicationController

  def guest_new
    @appearance = Appearance.new
    @guest = Guest.find_by(id: params[:id])
    @appearance.guest = @guest
    @episode = Episode.new
    @ratings = [1, 2, 3, 4, 5]
  end

  def episode_new
    @appearance = Appearance.new
    @episode = Episode.find_by(id: params[:id])
    @appearance.episode = @episode
    @guest = Guest.new
    @ratings = [1, 2, 3, 4, 5]

  end

  # def new
  #   @ratings = [1, 2, 3, 4, 5]
  #
  # end
  def guest_create
    guest = Guest.find(params[:guest_id])
    episode = Episode.find_by(number: params[:episode])
    appearance = Appearance.create(guest_id: guest.id, episode_id: episode.id, rating: params[:rating].to_i)
    redirect_to guest_path(guest)
  end

  def episode_create
    episode = Episode.find(params[:episode_id])
    guest = Guest.find_by(id: params[:guest])
    appearance = Appearance.create(guest_id: guest.id, episode_id: episode.id, rating: params[:rating].to_i)
    redirect_to episode_path(episode)

  end

end
