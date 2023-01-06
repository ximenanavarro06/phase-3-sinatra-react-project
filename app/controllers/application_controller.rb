class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/blogs" do
    blogs = Blog.all
    blogs.to_json
  end

  post "/blog/new_post" do
    
  end

  patch "/blogs/:id" do
    blog = Blog.find(params[:id])
    blog.update(

      like_count: params[:like_count]
    )
    blog.to_json
    
  end

  delete "/blogs/:id" do
    blog = Blog.find(params[:id])
    puts "hello"
    
    blog.destroy
    blog.to_json
  end



  # get "/comments" do
  #   Comments = Comment.all
  #   Comments.to_json
  # end

  

  get "/comments/:id" do
    Comments = Comment.where(blog_id: params[:id])
    Comments.to_json
  end

  post "/comments" do
    newComments = Comment.create(
      content: params[:content],
      blog_id: params[:blog_id],
      
      
    )
    
  end


  patch "/comments/:id" do 
    editComment = Comment.find(params[:id])
      editComment.update
      editComment.to_json

  end

  delete "/comments/delete_comment" do

  end



  # get "/likes/:id" do
  #   newLikes = Like.create(
  #     blog_id: params[:blog_id],
  #     user_id: params[:user_id],
  #   )
  # end

  patch "/likes/new_like" do

  end

  delete "/likes/delete_like" do

  end


end
