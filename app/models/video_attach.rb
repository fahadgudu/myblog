class VideoAttach < Asset
  mount_uploader :data, VideoUploader, mount_on: :filename
end
