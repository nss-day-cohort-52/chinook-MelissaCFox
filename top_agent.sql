
select employee.FirstName || " " || employee.LastName as EmployeeName, round(sum(invoice.total), 2) as TotalSales from employee
join customer on customer.supportrepid = employee.employeeId
join invoice on customer.customerId = invoice.customerId
where title like "%Sales%Agent%"
group by EmployeeName
order by totalSales desc
limit 1;


--alternate method using Max() on subquery

select EmployeeName, round(max(totalsales), 2)as total
from (
select employee.FirstName || " " || employee.LastName as EmployeeName, sum(invoice.total) as TotalSales from employee
join customer on customer.supportrepid = employee.employeeId
join invoice on customer.customerId = invoice.customerId
where title like "%Sales%Agent%"
group by EmployeeName
);