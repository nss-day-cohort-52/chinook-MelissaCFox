select billingcountry as Country, count(invoiceId) as TotalSales from invoice
group by country