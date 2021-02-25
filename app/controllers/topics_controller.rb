class TopicsController < ApplicationController
  def show
    @sub = Sub.find(params[:sub_id])

    # @topic = Topic.find(params[:id]) # this is another way to find Topic

    @topic = @sub.topics.find(params[:id])

    render component: "Topic", props: {topic: @topic, sub: @sub}
  end
end
