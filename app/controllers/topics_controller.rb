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
    #creates in memory, not database
    @topic = @sub.topics.new(topic_params)
    if (@topic.save)
      redirect_to sub_path(@sub)
    else
      render component: "TopicNew", props: {sub: @sub}
    end

  end


  #returning edit form
  def edit
    @topic = @sub.topics.find(params[:id])

    render component: "TopicEdit", props: {sub: @sub, topic:@topic}
  end


  def update
    @topic = @sub.topics.find(params[:id])
    @topic.update(topic_params)

    redirect_to sub_topic_path(@sub, @topic)
  end


  def destroy
    @topic = @sub.topics.find(params[:id])

    @topic.destroy
    redirect_to sub_path(@sub)
  end

  private

  def get_sub
    @sub = Sub.find(params[:sub_id])
  end

  def topic_params
    params.require(:topic).permit(:name, :body)
  end
end
