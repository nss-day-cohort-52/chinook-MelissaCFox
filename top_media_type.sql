select mediatype.name as MediaType, count(invoiceline.invoicelineid) as Purchases from mediatype
join track on track.mediatypeId = mediatype.mediatypeId
join invoiceline on invoiceline.trackid = track.trackid
group by mediatype
order by purchases desc
limit 1


-- answer key solution looks at the total number of tracks that have that media type
-- not the number of tracks that have been purchased with that media type...
select Name, max(media_count) as top_media_count
from (
    select mt.Name, count(t.MediaTypeId) as media_count
    from Track t
    join MediaType mt on t.MediaTypeId = mt.MediaTypeId
    group by t.MediaTypeId
);