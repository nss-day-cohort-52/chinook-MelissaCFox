select invoiceId, firstName || " " || lastName as fullName, invoiceDate, billingCountry from invoice
join customer on invoice.customerId = customer.customerId
where country = "Brazil";
