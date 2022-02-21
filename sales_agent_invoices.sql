select employee.FirstName || " " || employee.LastName as fullName, invoiceId from employee
join customer on customer.supportrepid = employee.employeeId
join invoice on customer.customerId = invoice.customerId
where title like "%Sales%Agent%";
