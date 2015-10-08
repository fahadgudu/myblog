class FileAttach < Asset
  mount_uploader :data, FileUploader, mount_on: :filename
end
