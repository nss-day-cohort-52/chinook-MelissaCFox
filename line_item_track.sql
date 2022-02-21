select invoicelineid, track.name as Track from invoiceline
join track on track.trackid = invoiceline.trackid
order by invoicelineid