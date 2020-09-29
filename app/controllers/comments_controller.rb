class CommentsController < ApplicationController
  before_action :set_question

  def create
    @question.comments.create! comments_params
    redirect_to @question
  end

  def destroy
    @question.comments.destroy params[:id]
    redirect_to @question
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end
    def comments_params
      params.required(:comment).permit(:content)
    end

end