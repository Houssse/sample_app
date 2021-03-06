class PictureUploader < CarrierWave::Uploader::Base
  
  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  # Указывает каталог для хранения загруженных файлов.
  # Разумно оставить значение по умолчанию загрузчикам для монтирования.
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Добавляет белый список расширений, которые позволено загружать.
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
