class CompositeImagesController < ApplicationController
  def show
    @composite = CompositeImage.find(params[:id])
  end
end