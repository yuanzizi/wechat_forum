class RepliesController < ApplicationController

  def create
    @reply = Reply.new(reply_param) do |r|
      r.user_id = current_user.id
    end
    if @reply.save
      redirect_to @reply.topic
    else
      @topic = @reply.topic
      @replies = @topic.replies.page(params[:page]).per(25)
      render file: "/topics/show"
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private
  def reply_param
    params.require(:reply).permit(:topic_id, :user_id, :content)
  end
end
