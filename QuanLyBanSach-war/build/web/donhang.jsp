<%-- 
    Document   : donhang
    Created on : Mar 26, 2024, 10:02:18 AM
    Author     : KongDinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>Admin</title>
    <link rel="stylesheet" href = "css/AdminPage.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    
    <header>
        <h1>QUẢN LÝ ĐƠN HÀNG</h1>
    </header>
    
    
    <main>
        
        <div id = "order" >
            
            
            <div id = "order-table">
                <table>
                    <thead>
                        <tr>
                            <th>ID đơn hàng</th>
                            <th>Tên người mua</th>
                            <th>Ngày lập</th>
                            <th>Trạng thái</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <p th:case = "0">Chờ duyệt</p>
                             
                            </td>
                            <td>
                                <div th:switch = "${donHang.trangThai}">
                                    <div th:case = "0">
                                        <button class="btn btn-primary approve-order" th:attr = "data-id = ${donHang.id}">Duyệt</button>
                                        <button class="btn btn-danger cancel-order" data-toggle="modal" data-target="#ModalYesNo" btn-use="huy" th:attr = "data-id = ${donHang.id}">Hủy</button>
                                    </div>
                                    <div th:case = "1">
                                        <button class="btn btn-success" data-toggle="modal" data-target="#ModalYesNo" btn-use="hoanthanh" th:attr = "data-id = ${donHang.id}">Hoàn Thành</button>
                                        <button class="btn btn-info" data-toggle="modal" data-target="#ModalOderInfor" th:attr = "data-id = ${donHang.id}">Infor</button>
                                        <button class="btn btn-danger cancel-order" data-toggle="modal" data-target="#ModalYesNo" btn-use="huy" th:attr = "data-id = ${donHang.id}">Hủy</button>
                                    </div>
                                    <div th:case = "2">
                                        <button class="btn btn-info">Infor</button>
                                    </div>
                                    <div th:case = "3">
                                        <button class="btn btn-info">Infor</button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    <!-- Các hàng dữ liệu khác -->
                    </tbody>
                </table>
            </div>
        </div>
        
    </main>
</body>
<script src = "js/AdminPage.js"></script>
</html>
