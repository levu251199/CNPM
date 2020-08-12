<%--
  Created by IntelliJ IDEA.
  User: LeVu
  Date: 7/4/2020
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang chủ LearnMath</title>
    <!-- Libs -->
    <script src="frontend/lib/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="frontend/css/index.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <!-- Libs -->
</head>
<body>
<div class="container-fluid">
    <%-- Header --%>
    <jsp:include page="include/header.jsp"></jsp:include>

    <!-- Content -->
    <div id="content">
        <!-- Section 1 -->
        <div class="card text-center bg-light">
            <div class="card-body row" style="background: #d6edf6">
                <img class="col-5" src="frontend/img/promoStat.png" alt="info-picture">
                <div style="text-align: left" class="col">
                    <h4 class="card-title">Không cần tìm đâu xa <br> Ngay tại đây bạn có thể học mọi lúc</h4>
                    <p class="card-text">Chúng tôi có đầy đủ các giáo án từ lớp 1 cho đến lớp 12. Đủ mọi
                        ngôn ngữ, từ cơ bản đến nâng cao với
                        đội ngũ giảng viên xuất sắc nhất quả đất.</p>
                    <a id="signup-button" href="#" class="btn btn-primary btn-lg">Kiếm khóa học ngay!</a>
                    <a id="signup-button-pro" href="#" class="btn btn-outline-primary btn-lg">Thử khóa học với bản
                        PRO+</a>
                </div>
            </div>
        </div>
        <!-- Section 2 -->
        <div id="info" style="text-align: center">
            <div class="info-title">Đến với LearnMath bạn sẽ nhận được</div>
            <div id="info-card" class="row">
                <div class="card col card-info align-items-center" style="width: 18rem;">
                    <img class="card-icon" src="frontend/img/info-1.png" alt="">
                    <div class="card-body">
                        <h5 class="title-card-info">Học những kiến thức mới nhất</h5>
                        <p class="card-text">Đa dạng bài học, cách học, độ khó cho bạn thỏa sức trải nghiệm.</p>
                    </div>
                </div>
                <div class="card col card-info align-items-center" style="width: 18rem;">
                    <img class="card-icon" src="frontend/img/info-2.png" alt="">
                    <div class="card-body">
                        <h5 class="title-card-info">Đội ngũ giảng viên xuất sắc</h5>
                        <p class="card-text">Giảng viên được tuyển chọn kĩ lưỡng, chất lượng, dạy dễ hiểu.</p>
                    </div>
                </div>
                <div class="card col card-info align-items-center" style="width: 18rem;">
                    <img class=" card-icon" src="frontend/img/info-3.png" alt="">
                    <div class="card-body">
                        <h5 class="title-card-info">Nhận bằng chứng nhận hẳn hoi</h5>
                        <p class="card-text">Đúng rồi đó, công sức của bạn bỏ ra không phí đâu.</p>
                    </div>
                </div>
                <div class="card col card-info align-items-center" style="width: 18rem;">
                    <img class="card-icon" src="frontend/img/info-4.png" alt="">
                    <div class="card-body">
                        <h5 class="title-card-info">Kết thêm nhiều bạn hơn</h5>
                        <p class="card-text">Có cơ hội mở rộng quan hệ bạn bè cũng như với giảng viên.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Section 3 (table cứng chỉ để trình bày k có database)-->
        <h5 style="margin-top: 20px">Top các môn học được yêu thích nhất</h5>
        <div class="row" style="background: #fcf4cf; margin: 25px 1px">
            <table class="table table-striped col-7">
                <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Tên môn học</th>
                    <th scope="col">Giảng viên</th>
                    <th scope="col">Số lượng học sinh</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Ứng dụng thực tế của tam giá đồng dạng</td>
                    <td>Đỗ Nam Trung</td>
                    <td>1,235,181</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Khối đa diện</td>
                    <td>András Arató</td>
                    <td>982,586</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Nguyên hàm, tích phân và ứng dụng</td>
                    <td>Đô My Lốt</td>
                    <td>782,586</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Hằng đẳng thức đáng nhớ</td>
                    <td>Lê Ngọc Xuân</td>
                    <td>602,586</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Tổ hợp, chỉnh hợp và ứng dụng</td>
                    <td>Bùi Văn Dũng</td>
                    <td>502,226</td>
                </tr>
                </tbody>
            </table>

            <img class="col" src="frontend/img/banner-5.png" alt="work">
        </div>
        <!-- Section 4 -->
        <div style="text-align: center">
            <div class="info-title">Các giảng viên hàn đầu dạy tại LearnMath</div>
            <h4 style="color: grey; margin: 20px">Với hơn 6000+ giờ dạy <br> hàng ngàn học sinh theo học</h4>
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="frontend/img/Trump.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">TS. Đỗ Nam Trung</h5>
                        <p class="card-text">Từng là một nhà doanh nhân nên thầy Trung có rất nhiều kinh nghiệm trong
                            việc
                            tính toán các số liệu và thuật toán phức tạp. Từng được trao tặng bằng
                            Tiến sĩ Danh dự về Quản trị Kinh doanh vào năm 2010 bởi đại học Robert Gordon.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">- "Hãy làm cho LearnMath vĩ đại một lần nữa!"</small>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="frontend/img/Milos.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">ThS. Đô My Lốt</h5>
                        <p class="card-text">Thầy Lốt đã từng qua Rio de Janeiro, Brasil 10 năm để học
                            và nghiên cứu. Thầy được rất nhiều học sinh ngưỡng mộ nhờ tài năng dạy học không
                            cần nói mà chỉ cần qua bài hát là học sinh ghi nhớ hết trong đầu.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">- "Học qua điệu nhảy là một nghệ thuật"</small>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="frontend/img/Harold.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">GS. András Arató</h5>
                        <p class="card-text">Vị giáo sư đến từ Hungary này đã gắn bó với LearnMath trong
                            12 năm qua. Các giáo trình của ông được đánh giá là dễ hiểu dễ tiếp thu nhất nhì
                            trong toàn hệ thống LearnMath.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">- "Hide the pain.."</small>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="include/footer.jsp"></jsp:include>
    $END$
</body>
<script>
    $('.carousel').carousel({
        interval: 3000
    })
</script>
</html>
