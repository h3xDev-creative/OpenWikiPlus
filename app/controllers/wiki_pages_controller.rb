class WikiPagesController < ApplicationController
  before_action :set_wiki_page, only: %i[show edit update destroy]

  def show
  end

  def new
    @wiki_page = current_topic.wiki_pages.build
  end

  def create
    @wiki_page = current_topic.wiki_pages.build(wiki_page_params)
    if @wiki_page.save
      redirect_to @wiki_page, notice: "Page created successfully."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @wiki_page.update(wiki_page_params)
      redirect_to @wiki_page, notice: "Page updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @wiki_page.destroy
    redirect_to wiki_topic_path(current_topic), notice: "Page deleted."
  end

  private

  def set_wiki_page
    @wiki_page = current_topic.wiki_pages.find(params[:id])
  end

  def wiki_page_params
    params.require(:wiki_page).permit(:title, :content)
  end

  def current_topic
    @current_topic ||= current_wiki.wiki_topics.find(params[:wiki_topic_id])
  end
end
