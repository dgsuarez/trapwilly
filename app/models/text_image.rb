class TextImage < ApplicationRecord
  mount_uploader :image, ImageUploader

  after_commit :send_to_ocr, on: [:create]

  def send_to_ocr
    OcrWorker.perform_async(id)
  end
end
