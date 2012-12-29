require 'will_paginate/array'
class PostsController < ApplicationController
	# respond_to :html, :js
	# def create
	# 	@post = Post.new(params[:post])
	# 		if @post.save
	# 			flash[:notice] = "Post successfully created!"
	# 		else
	# 			flash[:error] = "Error! You left some stuff blank."
	# 		end
	# 		redirect_to posts_path
	# end

   def home
    @posts = Post.all.paginate(:per_page => 10, :page => params[:page1])   	
    respond_to do |format|
        format.js
        format.html
    end
   end	

end