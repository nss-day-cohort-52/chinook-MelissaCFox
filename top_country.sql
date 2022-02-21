select billingcountry as Country, sum(total) as TotalSales from invoice
group by country
order by totalsales desc
limit 1