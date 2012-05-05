class PagesController < ApplicationController
  def index
    
  end

  def show
    corgis = ["corgi1.jpg", "corgi2.jpg", "corgi3.jpeg"]
    img = Magick::Image::read("http://michaelcalhoun.com/corgis/" + corgis.sample).first
    #img = Magick::Image::read("http://imgs.sfgate.com/blogs/images/sfgate/pets/2010/07/23/pembroke_welsh_corgi400x313.jpg").first
    resized = img.resize_to_fill(params[:width].to_i,params[:height].to_i)
    send_data resized.to_blob, :type => 'image/jpg',:disposition => 'inline'
  end
end
