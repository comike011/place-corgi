class PagesController < ApplicationController
  def index
    
  end

  def show
    img = Magick::Image::read("http://imgs.sfgate.com/blogs/images/sfgate/pets/2010/07/23/pembroke_welsh_corgi400x313.jpg").first
    resized = img.resize_to_fit(params[:width],params[:height])
    send_data resized.to_blob, :type => 'image/jpg',:disposition => 'inline'
  end
end
