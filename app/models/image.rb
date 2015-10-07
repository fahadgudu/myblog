class Image < Asset
  mount_uploader :data, ImageUploader, mount_on: :filename
end
