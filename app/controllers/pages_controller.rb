class PagesController < ApplicationController
  def show
    width  = params[:width].to_i
    height = params[:height].to_i

    if(width > 0 && height == 0)
      height = width
    end

    if (width > 0) && (height > 0)
      corgi_file = image_folder_router(height, width)
      img = Magick::Image::read(corgi_file).first
      final_image = img.resize_to_fill(width, height)
      send_data final_image.to_blob, :type => 'image/jpg',:disposition => 'inline'
    end
  end

  def video
    @video_height = params[:height].to_i
    @video_width  = params[:width].to_i
  end

  private
  def image_folder_router(height, width)
    file_path = Rails.root.join('public', 'corgis')
    if (height > width)
      return Dir.glob("#{file_path}/tall/corgi*").sample
    elsif (width > height)
      return Dir.glob("#{file_path}/wide/corgi*").sample
    else
      return Dir.glob("#{file_path}/square/corgi*").sample
    end
  end
end
