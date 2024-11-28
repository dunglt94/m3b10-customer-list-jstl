<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <%
        ArrayList<Customer> customers = new ArrayList<>();
        customers.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "img/img1.png"));
        customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "img/img2.png"));
        customers.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "img/img3.png"));
        customers.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "img/img4.png"));
        customers.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "img/img5.png"));
        request.setAttribute("list", customers);
    %>
    <title>[Bài tập] Hiển thị danh sách khách hàng</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
            box-shadow:  0 0 5px 2px rgba(89,155,214,69);
        }

        .head {
            text-align: center;
            border-bottom: white;

        }

        th, td {
            border-bottom: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        img {
            width: 40px;
            height: 40px;
        }
    </style>
</head>
<body>
<table >
    <tr>
        <th colspan="4" class="head">Danh sách khách hàng</th>
    </tr>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <tbody>
        <c:forEach var="customer" items="${list}">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.dob}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.picture}" alt="Ảnh của ${customer.name}"></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>