-- count for both years combines=d
select count() from invoice
where invoicedate like "2011%" or invoicedate like "2009%"


-- group by year --
SELECT strftime('%Y', InvoiceDate) as Year,
    COUNT() as InvoiceCount
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009'
    OR strftime('%Y', InvoiceDate) = '2011'
GROUP BY strftime('%Y', InvoiceDate)