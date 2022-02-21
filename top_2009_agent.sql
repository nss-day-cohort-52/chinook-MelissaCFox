
select employee.FirstName || " " || employee.LastName as EmployeeName, round(sum(invoice.total), 2) as TotalSales from employee
join customer on customer.supportrepid = employee.employeeId
join invoice on customer.customerId = invoice.customerId
where title like "%Sales%Agent%" and invoice.invoicedate like "2009%"
group by EmployeeName
order by totalSales desc
limit 1;


-- alternate method using max() on subquery --

select EmployeeName, round(max(TotalSales), 2) TotalSales
from (
    select employee.FirstName || " " || employee.LastName as EmployeeName, round(sum(invoice.total), 2) as TotalSales from employee
    join customer on customer.supportrepid = employee.employeeId
    join invoice on customer.customerId = invoice.customerId
    where title like "%Sales%Agent%" and invoice.invoicedate like "2009%"
    group by EmployeeName
)