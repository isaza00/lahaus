class PhotoQualityJob < ApplicationJob
  queue_as :default

  def perform(urls)
    print "XXXXXXXXXXXXXXXX"
    puts urls
=begin
    photos = Property.find(url).photos
    if photos.lenght > 0
      urls = ""
      for photo in photos
        urls += photo.url + " "
      end
      result = IO.popen("python3 IlluminationAnalyzer.py #{urls}")
      result = JSON.parse(result)
      if result.length > 0
        photos.each_with_index do |photo, i|
          photo.update_attributes(accepted: result[i])
        end
      end
    end
=end
  end
end
