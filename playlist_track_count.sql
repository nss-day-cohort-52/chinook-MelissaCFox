select playlist.name, count(trackId) from playlist
join playlisttrack on playlisttrack.playlistId = playlist.playlistId
group by playlist.name