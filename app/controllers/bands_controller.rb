class BandsController < ApplicationController
  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
  end

  def show
  end

  def index
    @band = Band.all
  end

  def update
  end

  def destroy
  end

end
