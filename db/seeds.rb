
Genre.destroy_all

g1 = Genre.create :name => 'EDM'

g2 = Genre.create :name => 'Dubstep'

g3 = Genre.create :name => 'Bass'

Track.destroy_all

t1 = Track.create :name => 'Bangarang'

t2 = Track.create :name => 'Eyes on fire'

t3 = Track.create :name => 'Bass Cannon'

Album.destroy_all

a1 = Album.create :name => 'Bangarang'

a2 = Album.create :name => 'UKF Podcast'

a3 = Album.create :name => 'Bass Central'

User.destroy_all

u1 = User.create :name => 'Colin', :email => 'colin@gmail.com', :image => 'https://socialbelly.com/assets/icons/blank_user-586bd979abac4d7c7007414f5e94fe71.png', :bio => 'This is a small bio', :social_facebook => 'www.facebook.com', :social_twitter => 'www.twitter.com', :social_instagram => 'www.instagram.com', :artist => false

u2 = User.create :name => 'Harry', :email => 'harry@gmail.com', :image => 'https://socialbelly.com/assets/icons/blank_user-586bd979abac4d7c7007414f5e94fe71.png', :bio => 'This is a small bio', :social_facebook => 'www.facebook.com', :social_twitter => 'www.twitter.com', :social_instagram => 'www.instagram.com', :artist => false

u3 = User.create :name => 'Minibro', :email => 'minibro@gmail.com', :image => 'https://socialbelly.com/assets/icons/blank_user-586bd979abac4d7c7007414f5e94fe71.png', :bio => 'This is a small bio', :social_facebook => 'www.facebook.com', :social_twitter => 'www.twitter.com', :social_instagram => 'www.instagram.com', :artist => false


Playlist.destroy_all

m1 = Playlist.create :name => 'Code Out'

m2 = Playlist.create :name => 'Driving'

m3 = Playlist.create :name => 'Gym'


r1.tracks << t1
r2.tracks << t3
r3.tracks << t2

a1.tracks << t1
a2.tracks << t3
a3.tracks << t2

g1.tracks << t2
g1.tracks << t1
g1.tracks << t3


m1.tracks << t1 << t2 << t3
m2.tracks << t2 << t3
m3.tracks << t3

u1.playlists << m1 
u2.playlists << m2 
u3.playlists << m3

