select track.name as TrackName, album.title as AlbumName, mediatype.name as MediaType, genre.name as Genre from track
join album on album.albumId = track.albumId
join mediatype on mediatype.mediaTypeId = track.mediaTypeId
join genre on genre.genreId = track.genreId