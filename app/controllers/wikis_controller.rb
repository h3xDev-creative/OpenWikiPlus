class WikisController < ApplicationController
  before_action :set_wiki, only: %i[show edit update destroy]

  def show
  end

  def new
    @wiki = current_user.build_wiki
  end

  def create
    @wiki = current_user.build_wiki(wiki_params)
    if @wiki.save
      redirect_to @wiki, notice: "Wiki created successfully."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @wiki.update(wiki_params)
      redirect_to @wiki, notice: "Wiki updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @wiki.destroy
    redirect_to root_path, notice: "Wiki deleted successfully."
  end

  private

  def set_wiki
    @wiki = current_user.wiki
  end

  def wiki_params
    params.require(:wiki).permit(:title, :description)
  end
end
