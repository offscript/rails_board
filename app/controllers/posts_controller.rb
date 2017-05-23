class PostsController < ApplicationController
	wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]
	respond_to :json 

	def index
		posts = Post.all
		render json: { status: 'SUCCESS', message: 'Loaded all posts', data: posts}, status: :ok
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			render json: { status: 'SUCCESS', message: 'Loaded all posts'}, status: :ok
		end
	end

	def show

	end

	def edit 

	end

	def destroy
		
	end

	private 

		def post_params
			params.require(:posts).permit(:title, :location, :description)
		end

end
