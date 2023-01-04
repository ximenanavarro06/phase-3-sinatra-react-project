Comment.destroy_all
Blog.destroy_all
Like.destroy_all


puts "Loading users..."
u1 = User.create(email: "anastasia279@gmail.com", username: "MysteryGirl_489")
u2 = User.create(email: "rawrXD@icloud.com", username: "rawr_XD123")
u3 = User.create(email: "ximenanavarro@icloud.com", username: "x_navarro")
u4 = User.create(email: "ilovemyself@gmail.com", username: "hot_lady_420")



puts "Loading blogs..."
b1 = Blog.create(title: "My Boyfriend", description: "This is my boyfriend and how I met him", created_at: Time.now, user_id: u1.id, like_count: 25)
b2 = Blog.create(title: "How I got My Doggy", description: "I got my puppy for my birthday, I loce her", created_at: Time.now, user_id: u2.id, like_count: 373)
b3 = Blog.create(title: "I Love My School", description: "I met the best people and am learning the best things", created_at: Time.now, user_id: u3.id, like_count: 279)
b4 = Blog.create(title: "The Snow Is So Cold and Gross", description: "I literally hate the snow and want to barf when I see it", created_at: Time.now, user_id: u4.id, like_count: 53)

puts "Loading comments..."
c1 = Comment.create(content: "You are hot", blog_id: b1.id, user_id: u2.id)
c2 = Comment.create(content: "I love you", blog_id: b2.id, user_id: u2.id)
c3 = Comment.create(content: "Disgustingggg", blog_id: b3.id, user_id: u3.id)
c4 = Comment.create(content: "You are so weird, I literally can not", blog_id: b4.id, user_id: u1.id)
c5 = Comment.create(content: "Rawrrr hottie!", blog_id: b3.id, user_id: u4.id)


puts "Loading likes..."
l1 = Like.create(user_id: u2.id, blog_id: b1.id)
l2 = Like.create(user_id: u2.id, blog_id: b2.id)
l3 = Like.create(user_id: u3.id, blog_id: b1.id)
l4 = Like.create(user_id: u4.id, blog_id: b1.id)
l5 = Like.create(user_id: u4.id, blog_id: b4.id)





# Seed your database here



puts "✅ Done loading!"
