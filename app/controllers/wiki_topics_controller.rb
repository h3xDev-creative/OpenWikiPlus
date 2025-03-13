class WikiTopicsController < ApplicationController
  before_action :set_wiki_topic, only: %i[show edit update destroy]

  def show
  end

  def new
    @wiki_topic = current_wiki.wiki_topics.build
  end

  def create
    @wiki_topic = current_wiki.wiki_topics.build(wiki_topic_params)
    if @wiki_topic.save
      redirect_to @wiki_topic, notice: "Topic created successfully."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @wiki_topic.update(wiki_topic_params)
      redirect_to @wiki_topic, notice: "Topic updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @wiki_topic.destroy
    redirect_to wiki_path(current_wiki), notice: "Topic deleted."
  end

  private

  def set_wiki_topic
    @wiki_topic = current_wiki.wiki_topics.find(params[:id])
  end

  def wiki_topic_params
    params.require(:wiki_topic).permit(:title, :description)
  end
end
