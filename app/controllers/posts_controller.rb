class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if @post.update(params[:post].permit(:title, :location, :you_are, :looking_for, :company, :description, :requirements, :product_cycle, :salary, :equity ))
			redirect_to @post
		else
			render 'edit'
		end
    end
    
    def destroy
    end
    
    private
    
    def post_params
        params.require(:post).permit(:title, :location, :you_are, :looking_for, :company, :description, :requirements, :product_cycle, :salary, :equity )
    end
    
    def find_post
        @post = Post.find(params[:id])
    end
end
