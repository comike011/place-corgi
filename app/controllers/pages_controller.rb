class PagesController < ApplicationController
  def index
    
  end

  def show
    corgis = ["corgi1.jpg", "corgi2.jpg", "corgi3.jpeg", "corgi4.jpg"]
    
    height = params[:height].to_i
    width  = params[:width].to_i
    if (width > 0) && (height > 0)
      if width <= 1000 && height <= 1000
        img = Magick::Image::read("http://michaelcalhoun.com/corgis/" + corgis.sample).first
        resized = img.resize_to_fill(width,height)
        send_data resized.to_blob, :type => 'image/jpg',:disposition => 'inline'
      else
        img = Magick::Image::read("http://michaelcalhoun.com/corgis/" + corgis.sample).first
        send_data img.to_blob, :type => 'image/jpg',:disposition => 'inline'
      end
    end
  end
  
  def video
    @height = params[:height].to_i
    @width  = params[:width].to_i
    
    
  end
  
end
