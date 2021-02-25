class TopicsController < ApplicationController

  before_action :get_sub

  def show
    # @sub = Sub.find(params[:sub_id])

    # @topic = Topic.find(params[:id]) # this is another way to find Topic

    @topic = @sub.topics.find(params[:id])

    render component: "Topic", props: {topic: @topic, sub: @sub}
  end

  # CREATES NEW TOPIC INSIDE SUB
  def new
    # @sub = Sub.find(params[:sub_id])
    render component: "TopicNew", props: {sub: @sub}
  end


  def create

  end


  private

  def get_sub
    @sub = Sub.find(params[:sub_id])
  end
end
