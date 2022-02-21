select invoice.invoiceId, count(invoicelineId) from invoice
join invoiceline on invoiceline.invoiceId = invoice.invoiceId
where invoice.invoiceId = 37