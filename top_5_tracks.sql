select track.name as Track, count(invoicelineid) as Purchases from track
join invoiceline on invoiceline.trackId = track.trackId
group by track
order by purchases desc
limit 5


-- answer key solution groups by invoiceline.trackId instead of track directly
select t.Name, count(il.trackId) as invoice_track_count
from InvoiceLine il
join Track t on t.TrackId = il.TrackId
group by il.trackId
order by invoice_track_count desc
limit 5;

