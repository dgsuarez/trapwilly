require 'open-uri'

class OcrWorker
  include Sidekiq::Worker

  def perform(text_image_id)
    text_image = TextImage.find(text_image_id)

    engine = Tesseract::Engine.new do |e|
      e.language  = :eng
      e.blacklist = '|'
    end

    file_content = text_image.image.read
    file_content.force_encoding("ASCII")
    ocrd_text = engine.text_for(file_content).strip

    text_image.update(content: ocrd_text)
  end
end
