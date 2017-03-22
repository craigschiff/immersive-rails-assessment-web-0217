class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
  end

  def show
    @guest = Guest.find_by(id: params[:id])
    @episodes = @guest.episodes
  end

  def edit
  end

  def update
  end


  def delete
  end
end
