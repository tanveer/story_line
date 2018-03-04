class HomesController < ApplicationController

  def index
    @stories = Story.all
  end
end
