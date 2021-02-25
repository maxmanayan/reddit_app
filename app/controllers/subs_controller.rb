class SubsController < ApplicationController
  def index
    @subs = Sub.all

    render component: "Subs", props: {subs: @subs}
  end

  def show
    @sub = Sub.find(params[:id])
    @topics = @sub.topics
    render component: "Sub", props: {sub: @sub, topics: @topics}
  end

  def new
    #this @sub has no id and is not in database
    @sub = Sub.new
    render component: "SubForm", props: {sub: @sub}
  end

  def create
    Sub.create(name: params[:sub][:name] )
    redirect_to root_path
  end

  


  def update
    @sub = Sub.find(params[:id])
    @sub.update(name: params[:sub][:name])
    redirect_to root_path
  end

  def edit
    #this @sub has an id and is in database
    @sub = Sub.find(params[:id])
    render component: "SubForm", props: {sub: @sub}

  end
end
