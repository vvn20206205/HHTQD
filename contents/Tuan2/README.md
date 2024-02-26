Do em sử dụng `MySql` không hỗ trợ file `.xlsx` như `SQL Sever` nên em chỉ tạo lệnh truy vấn.

1. Tổng hợp dữ liệu tổng tiền cho từng đơn hàng.

```sql
SELECT
    o.orderNumber,
    SUM(od.quantityOrdered * od.priceEach) AS totalAmount
FROM
    orders o
INNER JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY
    o.orderNumber;
```

2. Tổng hợp dữ liệu tổng tiền cho từng khách hàng.

```sql
SELECT
    o.customerNumber,
    c.customerName,
    SUM(od.quantityOrdered * od.priceEach) AS totalAmount
FROM
    orders o
INNER JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
INNER JOIN
    customers c ON o.customerNumber = c.customerNumber
GROUP BY
    o.customerNumber, c.customerName;
```

3. Tổng hợp dữ liệu tổng tiền cho từng dòng sản phẩm:

```sql
SELECT
    productCode,
    SUM(quantityOrdered * priceEach) AS totalAmount
FROM
    orderdetails
GROUP BY
    productCode;
```

4. Tổng hợp dữ liệu tổng tiền cho từng sản phẩm:

```sql
SELECT
    p.productCode,
    p.productName,
    SUM(od.quantityOrdered * od.priceEach) AS totalAmount
FROM
    products p
INNER JOIN
    orderdetails od ON p.productCode = od.productCode
GROUP BY
    p.productCode, p.productName;
```

5. Tổng hợp dữ liệu tổng tiền cho từng quốc gia:

```sql
SELECT
    c.country,
    SUM(od.quantityOrdered * od.priceEach) AS totalAmount
FROM
    orders o
INNER JOIN
    orderdetails od ON o.orderNumber = od.orderNumber
INNER JOIN
    customers c ON o.customerNumber = c.customerNumber
GROUP BY
    c.country;
```
