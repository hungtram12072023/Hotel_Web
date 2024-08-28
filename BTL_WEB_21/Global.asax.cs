using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;
using System.Xml.Serialization;

namespace BTL_WEB_21
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application["danhsach_user"] = new List<User>();
            User admin = new User();
            admin.ID = 1;
            admin.Email = "admin@gmail.com";
            admin.MatKhau = "123456789";
            admin.SDT = "0123456789";
            admin.HoTen = "Admin";
            List<User> ds;
            ds = (List<User>)Application["danhsach_user"];
            ds.Add(admin);
            Application["danhsach_user"] = ds;

            
            // danh sách sản phẩm
            Application["danhsach_SP"] = getDsSP();
        }
        protected List<spham> getDsSP()
        {
            string path = "ListSanPham.xml";
            List<spham> listSP = new List<spham>();
            if (File.Exists(Server.MapPath(path)))
            {
                // Đọc file
                XmlSerializer xml = new XmlSerializer(typeof(List<spham>));
                StreamReader file = new StreamReader(Server.MapPath(path));

                listSP = (List<spham>)xml.Deserialize(file);
                listSP = listSP.OrderBy(spham => spham.id).ToList();
                file.Close();
            }
            return listSP;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = false;
            Session["name"] = "";
            Session["listCart"] = new List<the>();
            Session["timeLogin"] = "";

        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
    
}