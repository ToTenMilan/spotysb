module CommentsHelper
  def comment_params
      params.require(:comment).permit(:author, :body, :meeting_time)
    end
end
