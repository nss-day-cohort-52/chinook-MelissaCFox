select billingcountry, count(invoiceId) from invoice
group by billingcountry