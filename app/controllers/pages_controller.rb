class PagesController < ApplicationController
  def index

  end

  def show
    # heroku varnish caching
    response.headers['Cache-Control'] = 'public, max-age=28800' # 8 hours

    width  = params[:width].to_i
    height = params[:height].to_i

    if (width > 0) && (height > 0)
      file_path = Rails.root.join('public', 'corgis')
      corgi_file = Dir.glob("#{file_path}/corgi*").sample
      img = Magick::Image::read(corgi_file).first
      final_image = img.resize_to_fill(width, height)

      send_data final_image.to_blob, :type => 'image/jpg',:disposition => 'inline'
    end
  end

  def video
    @video_height = params[:height].to_i
    @video_width  = params[:width].to_i
  end
end
