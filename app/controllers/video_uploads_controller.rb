class VideoUploadsController < ApplicationController
  def new
    @video_upload = VideoUpload.new
  end

  def create
    @video_upload = VideoUpload.new(video_upload_params)
    if @video_upload.save
      uploaded_video = @video_upload.upload!(current_user)

      if uploaded_video.failed?
        flash[:error] = 'There was an error while uploading your video...'
      else
        Video.create({link: "https://www.youtube.com/watch?v=#{uploaded_video.id}"})
        flash[:success] = 'Your video has been uploaded!'
      end
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def video_upload_params
    params.require(:video_upload).permit(:file, :title, :description)
  end
end