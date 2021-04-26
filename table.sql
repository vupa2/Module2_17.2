SELECT customers.customerNumber, customerName, phone, paymentDate, amount
    FROM customers
    INNER JOIN payments ON customers.customerNumber = payments.customerNumber
    WHERE city = 'Las Vegas';

SELECT customers.customerNumber, customerName, orderNumber, status
    FROM customers
    LEFT JOIN orders ON customers.customerNumber = orders.customerNumber;

SELECT customers.customerNumber, customerName, orderNumber, status
    FROM customers
    LEFT JOIN orders ON customers.customerNumber = orders.customerNumber
    WHERE orderNumber IS NULL;
