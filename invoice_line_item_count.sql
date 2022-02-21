select invoice.invoiceId as invoiceId, count(invoicelineId) as NumInvoiceLines from invoice
join invoiceline on invoiceline.invoiceId = invoice.invoiceId
group by invoice.InvoiceId