class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create

    redirect_to
  end

  def show
    @episode = Episode.find_by(id: params[:id])
    @appearances = @episode.appearances
  end

  def edit
  end

  def update
  end

  def delete
  end

end
