using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学生宿舍管理系统
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { // new Class1().hsgcaozuojilu(Session["username"].ToString().Trim(), "退出", "");
            Session.Abandon();
            Response.Redirect("login.aspx");

        }
    }
}