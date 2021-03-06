class CommentsController < ApplicationController
  load_and_authorize_resource
  invisible_captcha only: [:create, :update], honeypot: :subtitle
  def create
    #byebug
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    @user = request.env['warden'].user

    respond_to do |format|
      if @comment.save
        #ProductChannel.broadcast_to @product.id, comment: CommentsController.render(partial: 'comments/comment', locals: {comment: @comment}), average_rating: @product.average_rating
        format.html { redirect_to @product, notice: "Review was successfully created!"}
        format.json { render :show, status: :create, location: @product }
        format.js
      else
        format.html { redirect_to @product, alert: "Uh oh, something went wrong!"}
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    product= @comment.product
    @comment.destroy
    redirect_to product
  end

  private

    def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
    end 

end
