class VideoUpload < ActiveType::Object
  attribute :file, :varchar
  attribute :title, :varchar
  attribute :description, :text

  validates :file, presence: true
  validates :title, presence: true

  def upload!(user)
    account = Yt::Account.new access_token: user.token
    account.upload_video self.file.tempfile.to_path, title: self.title, description: self.description
  end
end