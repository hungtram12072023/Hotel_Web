﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="BTL_WEB_21.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <link rel="stylesheet" type="text/css" href="App_Start/css/menu.css"/>
    <link rel="stylesheet" type="text/css" href="App_Start/css/dky.css"/>
    
</head>
<body>
   <header id="hd" class="hd1">
        <form  method="post" id="form">
        <div class="chuyen">
          <div class="logo">
            <a href="trangchu.aspx">
                <image class="logo1" src="App_Start/img/logo.png"></image>
            </a>
          </div>
          <div class="timkiem">
            <div class="pchia">
                  <div class="pchia1">
                           <input class="timkiem1" name="timkiem2" type ="text" id="timkiem2" placeholder="Tìm Kiếm "/>
                   </div>
                  <div class="pchia2">
                     <button id="timkiem" type="submit" name="timkiem" value="timkiem" class="">
                      <img class="imgtk" src="App_Start/img/nuttimkiem1.jpg" />
                     </button> 
                   </div>
              </div>
           </div>
        </div>
        </form>
        <div class="thanhchon">
            <ul>
                <li class="menu"><a class="a" href="tintuc.aspx">Tin tức</a></li>
                <li class="menu"><a class="a" href="sanpham.aspx">Hot Room</a></li>
                <li class="menu" id="dky" runat="server"><a class="a" href="dangky.aspx">Đăng ký</a></li>
                <li class="menu" id="dnhap" runat="server"><a class="a" href="dangnhap.aspx">Đăng nhập</a></li>
                <li class="menu" id="tkhoan" runat="server"></li>
            </ul>
        </div>
    </header>
    <div class="noidung">
        <div class="mausac">
           <p><h2> Đăng ký thành viên của HQH-Team để tích điểm thưởng và nhận ưu đãi</h2></p>
            Nhanh chóng, tiện lợi, uy tín, chất lượng và an toàn. Đăng ký liền tay - Rinh ngay quyền lợi
        </div>
        
        <div class="bang">
            <table>
                <tr>
                    <td>
                        <div>
                            <img src="App_Start/img/thanhtoan.png" /><br />
                            <h3>Thanh toán đơn giản</h3>
                            Phương thức thanh toán tiện lợi, an toàn. Tích hợp chức năng lưu thẻ để đặt phòng lần sau.
                        </div>
                    </td>
                    <td>
                        <div>
                            <img src="App_Start/img/tienich.png" /><br />
                            <h3>Tiện ích thông minh</h3>
                            Check-in và kiểm tra hóa đơn thanh toán kể cả khi không có kết nối mạng. Hoàn tiền nhanh gọn. Đổi lịch dễ dàng.
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div>
                            <img src="App_Start/img/uudai.png" /><br />
                            <h3>Ưu đãi mỗi ngày</h3>
                            Nhận thông báo ưu đãi từ Luxstay khi có kế hoạch du lịch để lựa chọn và đặt ngay cho mình một chỗ ở phù hợp, tiện nghi với giá tốt nhất.
                        </div>
                    </td>
                    <td>
                        <div>
                            <img src="App_Start/img/tichxu.png" /><br />
                            <h3>Tích điểm nhanh chóng</h3>
                            Tích điểm đối với mỗi lượt đặt chỗ thành công. Quy đổi thành Lux Credit để du lịch nhiều hơn nữa.
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div class="tbform">
        <form class="fdky" method="post" autocomplete="off" runat="server" onsubmit="return checkData()" id="form">
            <h1 class="f1" id="f1">Đăng ký thành viên</h1>
            <h4> Địa chỉ email</h4>
            <input class="f2" id="email" name="email" type="text" placeholder="  Địa chỉ Email" /><br />
            <span id="tbaoemail">

            </span>
            <h4> Số điện thoại </h4>
            <input class="f2" id="sdthoai" name="sdthoai" type="text" placeholder="  Số điện thoại" />
            <br />
            <span id="tbaosdt">
               
            </span>
            <h4> Họ tên </h4>
            <input class="f2" id="hten" name="hten" type="text" placeholder="  Họ tên" />
            <span id="tbaohten">

            </span>
            <h4> Mật khẩu </h4>
            <input class="f2" id="mkhau" name="mkhau" type="password" placeholder="  Mật khẩu " />
            <span id="tbaomkhau">

            </span>
            <h4> Xác nhận mật khẩu </h4>
            <input class="f2" id="cfmkhau" name="cfmkhau" type="password" placeholder="  Xác nhận mật khẩu" />
            <span id="tbaocfmkhau">

            </span>
            <input class="f2" id="bt" name="bt" type="submit" value="Đăng ký" />        
            <span id="tbaosubmit" runat="server">

            </span>         
            <center>
                Bạn đã có tài khoản HQH-Team?<a class="a" href="dangnhap.aspx">Đăng nhập</a><br />
                Tôi đồng ý với Bảo mật và Điều khoản hoạt động của Luxstay.
                Hoặc<br />
            </center> 
            <input class="f2" type="button" value="Đăng nhập với Facebook" />   
            <input class="f2" type="button" value="Đăng nhập với Google" />   
        </form>
        </div>
    </div>
    <div class="ngan"></div>
    <center>
    <hr />
    </center>
    <footer>
        <div class="thongtin">
           <h3> TOP Hotel được quan tâm</h3>
            <ul>
                <li class="tt">TeamHQH Hà Nội</li>
                <li class="tt">TeamHQH Đà Nẵng </li>
                <li class="tt">TeamHQH Hải Phòng</li>
                <li class="tt">TeamHQH Hồ Chí Minh</li>
                <li class="tt">TeamHQH Vũng Tàu</li>
            </ul>
        </div>
        <div class="thongtin">
            <h3> Không gian yêu thích</h3>
            <ul>
                <li class="tt">Căn hộ</li>
                <li class="tt">Khách sạn</li>
                <li class="tt">Nhà riêng</li>
                <li class="tt">Bể bơi</li>
                <li class="tt">Vườn hoa</li>
            </ul>
        </div>
        <div class="thongtin">
            <h3> Về chúng tôi</h3>
            <ul>
                <li class="tt">facebook</li>
                <li class="tt">0988722463</li>
                <li class="tt">hqhteam@gmail.com</li>
            </ul>
        </div>
        <div class="thongtin">
            <h3>Tải ứng dụng tại HQH-Team</h3>
            <table>
                <tr>
                    <td rowspan="2"><img class="imgcode" src="App_Start/img/macode.png" /></td>
                    <td><img class="ggpl" src="App_Start/img/ggplay.png" /></td>
                </tr>
                <tr>
                    <td><img class="appst" src="App_Start/img/appst.png" /></td>
                </tr>
            </table>
        </div>
        <div class="cuoi"><h4>Design by HQH-Team</h4></div>
    </footer>
    <script type="text/javascript" src="App_Start/js/dky.js"></script>
</body>
</html>
