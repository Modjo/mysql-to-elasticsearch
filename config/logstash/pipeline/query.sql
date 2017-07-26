SELECT
  s.song_id AS id,
  s.song_title AS song,
  DATE_FORMAT(s.date_created, '%Y-%m-%d %T') AS timestamp,
  ar.artist_name AS artist,
  al.album_title AS album
FROM
  songs s
JOIN artist_songs ar_s
  ON s.song_id = ar_s.song_id
JOIN artists ar
  ON ar_s.artist_id = ar.artist_id
JOIN album_songs al_s
  ON s.song_id = al_s.song_id
JOIN albums al
  ON al_s.album_id = al.album_id