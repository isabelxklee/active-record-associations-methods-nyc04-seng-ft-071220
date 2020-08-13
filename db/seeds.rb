Song.delete_all
Genre.delete_all
Artist.delete_all

hotline_bling = Song.create(:name=>'Hotline Bling')
thriller = Song.create(:name=>'Thriller')
song3 = Song.create(:name=>'Some Shitty Drake Song')
song4 = Song.create(:name=>'Some Other Shitty Drake Song')

drake = Artist.create(:name=>'Drake')
mj = Artist.create(:name=>'Michael Jackson')

rap = Genre.create(:name=>'Rap')
pop = Genre.create(:name=>'Pop')

hotline_bling.artist = drake
song3.artist = drake
song4.artist = drake
thriller.artist = mj

drake.songs << hotline_bling
drake.songs << song3
drake.songs << song4
mj.songs << thriller

pop.songs << thriller
pop.songs << song3
pop.songs << song4
rap.songs << hotline_bling