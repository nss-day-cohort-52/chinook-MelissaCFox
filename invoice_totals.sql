select total, customer.firstName || " " || customer.lastName as customerName, customer.country, employee.firstName || " " || employee.lastName as employeeName from invoice
join customer on customer.customerId = invoice.customerId
join employee on customer.supportrepid = employee.employeeId;
