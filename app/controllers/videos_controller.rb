class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    @video = Video.new(video_params)

    if @video.save
      redirect_to @video
    else
      render 'new'
    end
  end

  def show
    @video = Video.find(params[:id])
    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @video }
      format.xml { render xml: @video }
    end
  end

  def update
    @video = Video.find(params[:id])

    if @video.update(video_params)
      redirect_to @video
    else
      render 'edit'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    redirect_to videos_path
  end

  private
  def video_params
    params.require(:video).permit(:title, :body)
  end

end
