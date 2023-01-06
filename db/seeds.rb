Comment.destroy_all
Blog.destroy_all
Like.destroy_all



puts "Loading blogs..."
b1 = Blog.create(title: "My Boyfriend", description: "This is my boyfriend and how I met him", created_at: Time.now, like_count: 25)
b2 = Blog.create(title: "How I got My Doggy", description: "I got my puppy for my birthday, I loce her", created_at: Time.now, like_count: 373)
b3 = Blog.create(title: "I Love My School", description: "I met the best people and am learning the best things", created_at: Time.now, like_count: 279)
b4 = Blog.create(title: "The Snow Is So Cold and Gross", description: "I literally hate the snow and want to barf when I see it", created_at: Time.now, like_count: 53)

puts "Loading comments..."
c1 = Comment.create(content: "You are hot", blog_id: b1.id)
c2 = Comment.create(content: "I love you", blog_id: b2.id)
c3 = Comment.create(content: "Disgustingggg", blog_id: b3.id)
c4 = Comment.create(content: "You are so weird, I literally can not", blog_id: b4.id)
c5 = Comment.create(content: "Rawrrr hottie!", blog_id: b3.id)


puts "Loading likes..."
l1 = Like.create(blog_id: b1.id)
l2 = Like.create(blog_id: b2.id)
l3 = Like.create(blog_id: b1.id)
l4 = Like.create(blog_id: b1.id)
l5 = Like.create(blog_id: b4.id)





# Seed your database here



puts "✅ Done loading!"
