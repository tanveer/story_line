class StoriesController < ApplicationController

  before_action :set_story, only: [:edit, :update, :show, :destroy]


  def index
    @story = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.user = current_user
    if @story.save
      flash[:success] = "Your story is ceated successfuly"
      redirect_to story_path(@story)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @story.destroy
    flash[:danger] = "Story was successfully deleted"
    redirect_to stories_path
  end

  private
    def story_params
      params.require(:story).permit(:title, :story)
    end

    def set_story
      @story = Story.find(params[:id])
    end
end
