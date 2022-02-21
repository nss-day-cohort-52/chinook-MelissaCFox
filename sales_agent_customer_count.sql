select employee.firstName || " " || employee.lastName as EmployeeName, count(customerId) as NumberOfCustomers from employee
left join customer on customer.supportrepid = employee.employeeId
group by EmployeeName
