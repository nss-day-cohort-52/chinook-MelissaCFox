select invoiceLineId, track.name as trackName, artist.name as artistName from invoiceline
join track on track.trackId = invoiceline.trackId
join album on album.albumId = track.albumId
join artist on artist.artistId = album.artistId
order by invoicelineId
