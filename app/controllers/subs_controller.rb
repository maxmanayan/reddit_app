class SubsController < ApplicationController
  def index
    @subs = Sub.all

    render component: "Subs", props: {subs: @subs}
  end

  def show
    render component: "Sub"
  end
end
