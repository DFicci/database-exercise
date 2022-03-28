Select album_name from albums;
Select album_name from albums where release_date <= 1980;
Select album_name from albums where artist = 'Michael Jackson';
update albums set sales = (sales * 20);
update albums set release_date = (release_date - 100) where release_date <= 1980;
update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';