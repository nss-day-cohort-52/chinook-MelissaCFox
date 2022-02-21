
-- Max purchases is 2 but there are multiple (9) tracks that had 2 purchase
select track.name as Track, count(invoice.invoiceId) as Purchases from track
join invoiceline on invoiceline.trackId = track.trackId
join invoice on invoice.invoiceId = invoiceline.invoiceid
where invoice.invoiceDate like "2013%"
group by track
order by purchases desc

--answer key did not limit list to max purchases, only ordered by purchase number