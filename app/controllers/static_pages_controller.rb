class StaticPagesController < ApplicationController
  def home
    @title = "Home | RoR"
  end

  def help
    @title = "Help | RoR"
  end

  def about
    @title = "About | RoR"
  end
end
