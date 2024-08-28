using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BTL_WEB_21
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email, sdt, hoten, matkhau;
            email = Request.Form["email"];
            matkhau = Request.Form["mkhau"];
            sdt = Request.Form["sdthoai"];
            hoten = Request.Form["hten"];


            List<User> lstuser = (List<User>)Application["danhsach_user"];
            if (IsPostBack)
            {
                if (Request.Form["bt"] == "Đăng ký")
                {
                    bool check = false;

                    foreach (User ds in lstuser)
                    {
                        if (ds.Email == email || ds.SDT == sdt)
                        {
                            check = true;
                        }
                    }
                    if (check == false)
                    {
                        User user = new User();
                        user.Email = email;
                        user.MatKhau = matkhau;
                        user.SDT = sdt;
                        user.HoTen = hoten;
                        lstuser.Add(user);
                        Application["danhsach_user"] = lstuser;
                        Response.Redirect("dangnhap.aspx");
                    }
                    else
                    {
                        string js = "<script>document.getElementById('tbaosubmit').innerHTML = \"Tài khoản đã tồn tại ,vui lòng đăng ký lại\";</script>  ";
                        tbaosubmit.InnerHtml = js;
                        //Response.Write(js);

                    }
                }

            }
        }
    }
}