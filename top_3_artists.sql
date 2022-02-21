select artist.name as Artist, count(invoiceline.invoiceId) as NumberSoldTracks from artist
join album on album.artistId = artist.artistId
join track on track.albumId = album.albumId
join InvoiceLine on invoiceline.trackId = track.TrackId
group by Artist
order by numberSoldTracks desc
limit 3