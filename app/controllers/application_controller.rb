class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/blogs" do
    blogs = Blog.all
    blogs.to_json
  end

  post "/blog/new_post" do
    
  end

  patch "/blog/add_like" do
    
  end

  delete "/blogs/:id" do
    blog = Blog.find(params[:id])
    puts "hello"
    
    blog.destroy
    blog.to_json
  end



  get "/comments" do
    
  end

  post "/comments/new_comment" do

  end

  delete "/comments/delete_comment" do

  end



  get "/likes" do
    
  end

  patch "/likes/new_like" do

  end

  delete "/likes/delete_like" do

  end



  get "/user" do

  end



end
