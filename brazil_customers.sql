SELECT customerId, firstName || " " || lastName as fullName, country from customer
where country = "Brazil";